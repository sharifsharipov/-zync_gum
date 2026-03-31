import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';
import 'package:zync_gum/core/database/local_source.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/data/data_source/auth_data_source.dart';
import 'package:zync_gum/features/auth/data/models/sign_in_request/sign_in_request.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';

@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  AuthDataSourceImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
    required LocalSource localSource,
    required Talker talker,
  })  : _auth = firebaseAuth,
        _firestore = firestore,
        _googleSignIn = googleSignIn,
        _localSource = localSource,
        _talker = talker;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
  final LocalSource _localSource;
  final Talker _talker;

  @override
  Future<Either<Failure, UserResponse>> signInWithEmail(
    SignInEmailRequest params,
  ) async {
    _talker.info('[REQUEST] signInWithEmail: ${params.email}');
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      await _saveToken(credential.user!);
      final response = await _fetchOrCreate(credential.user!);
      _talker.info('[RESPONSE] signInWithEmail: uid=${response.id}');
      return Right(response);
    } on FirebaseAuthException catch (e) {
      _talker.error('[RESPONSE] signInWithEmail FAILED: ${e.code}');
      return Left(FirebaseAuthFailure.fromException(e));
    } catch (e) {
      _talker.error('[RESPONSE] signInWithEmail ERROR: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserResponse>> signUpWithEmail(
    SignInEmailRequest params, {
    required String name,
  }) async {
    _talker.info('[REQUEST] signUpWithEmail: ${params.email}');
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      await credential.user!.updateDisplayName(name);
      await _saveToken(credential.user!);
      final response = await _fetchOrCreate(credential.user!, name: name);
      _talker.info('[RESPONSE] signUpWithEmail: uid=${response.id}');
      return Right(response);
    } on FirebaseAuthException catch (e) {
      _talker.error('[RESPONSE] signUpWithEmail FAILED: ${e.code}');
      return Left(FirebaseAuthFailure.fromException(e));
    } catch (e) {
      _talker.error('[RESPONSE] signUpWithEmail ERROR: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserResponse>> signInWithGoogle() async {
    _talker.info('[REQUEST] signInWithGoogle');
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return Left(UnknownFailure(message: 'Google sign in bekor qilindi'));
      }
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final userCredential = await _auth.signInWithCredential(credential);
      await _saveToken(userCredential.user!);
      final response = await _fetchOrCreate(userCredential.user!);
      _talker.info('[RESPONSE] signInWithGoogle: uid=${response.id}');
      return Right(response);
    } on FirebaseAuthException catch (e) {
      _talker.error('[RESPONSE] signInWithGoogle FAILED: ${e.code}');
      return Left(FirebaseAuthFailure.fromException(e));
    } catch (e) {
      _talker.error('[RESPONSE] signInWithGoogle ERROR: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    _talker.info('[REQUEST] signOut');
    try {
      await Future.wait([_auth.signOut(), _googleSignIn.signOut()]);
      await _localSource.setAccessToken('');
      _talker.info('[RESPONSE] signOut: success');
      return const Right(null);
    } catch (e) {
      _talker.error('[RESPONSE] signOut ERROR: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserResponse?>> getAuthStatus() async {
    _talker.info('[REQUEST] getAuthStatus');
    try {
      final firebaseUser = _auth.currentUser;
      if (firebaseUser == null) {
        _talker.info('[RESPONSE] getAuthStatus: not authenticated');
        return const Right(null);
      }
      await _saveToken(firebaseUser);
      final response = await _fetchOrCreate(firebaseUser);
      _talker.info('[RESPONSE] getAuthStatus: uid=${response.id}');
      return Right(response);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseAuthFailure.fromException(e));
    } catch (e) {
      _talker.error('[RESPONSE] getAuthStatus ERROR: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  Future<void> _saveToken(User firebaseUser) async {
    try {
      final token = await firebaseUser.getIdToken();
      if (token != null) {
        await _localSource.setAccessToken(token);
      }
    } catch (e) {
      _talker.warning('_saveToken error: $e');
    }
  }

  Future<UserResponse> _fetchOrCreate(User firebaseUser, {String? name}) async {
    try {
      final doc = await _firestore
          .collection('users')
          .doc(firebaseUser.uid)
          .get();

      if (doc.exists && doc.data() != null) {
        return UserResponse.fromJson({
          'id': firebaseUser.uid,
          ...doc.data()!,
        });
      }

      final newResponse = UserResponse(
        id: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        name: name ?? firebaseUser.displayName ?? '',
        role: 'user',
        avatarUrl: firebaseUser.photoURL ?? '',
        phone: firebaseUser.phoneNumber ?? '',
        lastLogin: DateTime.now(),
        createdAt: DateTime.now(),
      );

      await _firestore
          .collection('users')
          .doc(firebaseUser.uid)
          .set(newResponse.toJson()..remove('id'));

      _talker.info('New user created: ${firebaseUser.uid}');
      return newResponse;
    } on FirebaseException catch (e) {
      _talker.error('Firestore error: $e');
      return UserResponse(
        id: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        name: firebaseUser.displayName ?? '',
        avatarUrl: firebaseUser.photoURL ?? '',
      );
    }
  }
}
