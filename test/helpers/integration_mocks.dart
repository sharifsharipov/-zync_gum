import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';
import 'package:zync_gum/features/auth/domain/usecases/check_auth_usecase/check_auth_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_email_usecase/sign_in_email_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_google_usecase/sign_in_google_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_out_usecase/sign_out_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_up_email_usecase/sign_up_email_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_businesses_usecase/get_businesses_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_inventory_usecase/get_inventory_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_production_lines_usecase/get_production_lines_usecase.dart';
import 'package:zync_gum/features/profile/domain/usecases/get_user_profile_usecase/get_user_profile_usecase.dart';
import 'package:zync_gum/features/profile/domain/usecases/update_avatar_url_usecase/update_avatar_url_usecase.dart';
import 'package:zync_gum/features/profile/domain/usecases/update_user_name_usecase/update_user_name_usecase.dart';

@GenerateMocks([
  CheckAuthUsecase,
  SignOutUsecase,
  SignInEmailUsecase,
  SignUpEmailUsecase,
  SignInGoogleUsecase,
  GetProductionLinesUsecase,
  GetInventoryUsecase,
  GetBusinessesUsecase,
  GetUserProfileUsecase,
  UpdateUserNameUsecase,
  UpdateAvatarUrlUsecase,
  FirebaseAuth,
  User,
])
void main() {}
