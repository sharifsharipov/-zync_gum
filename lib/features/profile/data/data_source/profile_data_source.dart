import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/auth/data/models/user_response/user_response.dart';

abstract interface class ProfileDataSource {
  Future<Either<Failure, UserResponse>> getUserProfile(String userId);
  Future<Either<Failure, void>> updateUserName(String userId, String name);
  Future<Either<Failure, void>> updateAvatarUrl(String userId, String avatarUrl);
}
