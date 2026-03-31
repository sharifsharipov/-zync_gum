import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';
import 'package:zync_gum/features/profile/data/data_source/profile_data_source.dart';

@LazySingleton(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  ProfileDataSourceImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
    required Talker talker,
  })  : _auth = firebaseAuth,
        _firestore = firestore,
        _talker = talker;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final Talker _talker;

  @override
  Future<Either<Failure, UserResponse>> getUserProfile(String userId) async {
    _talker.info('[REQUEST] getUserProfile: $userId');
    try {
      final doc = await _firestore.collection('users').doc(userId).get();
      if (!doc.exists || doc.data() == null) {
        _talker.warning('[RESPONSE] getUserProfile: not found');
        return const Left(DatabaseFailure(message: 'User not found'));
      }
      final response = UserResponse.fromJson({'id': userId, ...doc.data()!});
      _talker.info('[RESPONSE] getUserProfile: ${response.name}');
      return Right(response);
    } on FirebaseException catch (e) {
      _talker.error('[RESPONSE] getUserProfile FAILED: $e');
      return Left(DatabaseFailure(message: e.message ?? e.toString()));
    } catch (e) {
      _talker.error('[RESPONSE] getUserProfile ERROR: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateUserName(
    String userId,
    String name,
  ) async {
    try {
      await _firestore.collection('users').doc(userId).update({'name': name});
      await _auth.currentUser?.updateDisplayName(name);
      _talker.info('User name updated: $userId');
      return const Right(null);
    } on FirebaseException catch (e) {
      _talker.error('updateUserName: $e');
      return Left(DatabaseFailure(message: e.message ?? e.toString()));
    } catch (e) {
      _talker.error('updateUserName unknown: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateAvatarUrl(
    String userId,
    String avatarUrl,
  ) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .update({'avatarUrl': avatarUrl});
      await _auth.currentUser?.updatePhotoURL(avatarUrl);
      _talker.info('Avatar updated: $userId');
      return const Right(null);
    } on FirebaseException catch (e) {
      _talker.error('updateAvatarUrl: $e');
      return Left(DatabaseFailure(message: e.message ?? e.toString()));
    } catch (e) {
      _talker.error('updateAvatarUrl unknown: $e');
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
