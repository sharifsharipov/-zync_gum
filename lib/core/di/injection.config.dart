// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter/widgets.dart' as _i718;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:pinput/pinput.dart' as _i4;
import 'package:smart_auth/smart_auth.dart' as _i440;
import 'package:talker/talker.dart' as _i993;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import '../../features/auth/data/data_source/auth_data_source.dart' as _i364;
import '../../features/auth/data/data_source/auth_data_source_impl.dart'
    as _i985;
import '../../features/auth/data/repositories/auth_repositories_impl.dart'
    as _i394;
import '../../features/auth/domain/repositories/auth_repositories.dart'
    as _i962;
import '../../features/auth/domain/usecases/check_auth_usecase/check_auth_usecase.dart'
    as _i494;
import '../../features/auth/domain/usecases/sign_in_email_usecase/sign_in_email_usecase.dart'
    as _i614;
import '../../features/auth/domain/usecases/sign_in_google_usecase/sign_in_google_usecase.dart'
    as _i530;
import '../../features/auth/domain/usecases/sign_out_usecase/sign_out_usecase.dart'
    as _i194;
import '../../features/auth/domain/usecases/sign_up_email_usecase/sign_up_email_usecase.dart'
    as _i606;
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i661;
import '../../features/home/data/data_source/home_data_source.dart' as _i68;
import '../../features/home/data/data_source/home_data_source_impl.dart'
    as _i291;
import '../../features/home/data/repositories/home_repositories_impl.dart'
    as _i751;
import '../../features/home/domain/repositories/home_repositories.dart'
    as _i688;
import '../../features/home/domain/usecases/get_businesses_usecase/get_businesses_usecase.dart'
    as _i472;
import '../../features/home/domain/usecases/get_inventory_usecase/get_inventory_usecase.dart'
    as _i143;
import '../../features/home/domain/usecases/get_production_lines_usecase/get_production_lines_usecase.dart'
    as _i619;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/main/presentation/bloc/main_bloc.dart' as _i1014;
import '../../features/profile/data/data_source/profile_data_source.dart'
    as _i519;
import '../../features/profile/data/data_source/profile_data_source_impl.dart'
    as _i853;
import '../../features/profile/data/repositories/profile_repositories_impl.dart'
    as _i127;
import '../../features/profile/domain/repositories/profile_repositories.dart'
    as _i367;
import '../../features/profile/domain/usecases/get_user_profile_usecase/get_user_profile_usecase.dart'
    as _i140;
import '../../features/profile/domain/usecases/update_avatar_url_usecase/update_avatar_url_usecase.dart'
    as _i855;
import '../../features/profile/domain/usecases/update_user_name_usecase/update_user_name_usecase.dart'
    as _i974;
import '../../features/profile/presentation/bloc/profile_bloc.dart' as _i469;
import '../connectivity/network_info.dart' as _i511;
import '../database/local_source.dart' as _i363;
import 'general_module.dart' as _i801;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final generalModule = _$GeneralModule();
    gh.factory<_i1014.MainBloc>(() => _i1014.MainBloc());
    await gh.singletonAsync<_i363.LocalSource>(
      () => generalModule.provideLocalSource(),
      preResolve: true,
    );
    gh.singleton<_i718.GlobalKey<_i718.NavigatorState>>(
      () => generalModule.provideNavigatorKey(),
    );
    await gh.singletonAsync<_i655.PackageInfo>(
      () => generalModule.providePackageInfo(),
      preResolve: true,
    );
    gh.singleton<_i511.InternetConnectionChecker>(
      () => generalModule.provideConnectivity(),
    );
    gh.singleton<_i59.FirebaseAuth>(() => generalModule.provideFirebaseAuth());
    gh.singleton<_i974.FirebaseFirestore>(
      () => generalModule.provideFirestore(),
    );
    gh.singleton<_i116.GoogleSignIn>(() => generalModule.provideGoogleSignIn());
    gh.singleton<_i440.SmartAuth>(() => generalModule.provideSmartAuth());
    gh.singleton<_i207.Talker>(() => generalModule.provideTalker());
    gh.lazySingleton<_i519.ProfileDataSource>(
      () => _i853.ProfileDataSourceImpl(
        firebaseAuth: gh<_i59.FirebaseAuth>(),
        firestore: gh<_i974.FirebaseFirestore>(),
        talker: gh<_i993.Talker>(),
      ),
    );
    gh.lazySingleton<_i367.ProfileRepositories>(
      () => _i127.ProfileRepositoriesImpl(
        dataSource: gh<_i519.ProfileDataSource>(),
      ),
    );
    gh.lazySingleton<_i140.GetUserProfileUsecase>(
      () => _i140.GetUserProfileUsecase(
        repositories: gh<_i367.ProfileRepositories>(),
      ),
    );
    gh.lazySingleton<_i855.UpdateAvatarUrlUsecase>(
      () => _i855.UpdateAvatarUrlUsecase(
        repositories: gh<_i367.ProfileRepositories>(),
      ),
    );
    gh.lazySingleton<_i974.UpdateUserNameUsecase>(
      () => _i974.UpdateUserNameUsecase(
        repositories: gh<_i367.ProfileRepositories>(),
      ),
    );
    gh.lazySingleton<_i68.HomeDataSource>(
      () => _i291.HomeDataSourceImpl(
        firestore: gh<_i974.FirebaseFirestore>(),
        talker: gh<_i993.Talker>(),
      ),
    );
    gh.singleton<_i4.SmsRetriever>(
      () => generalModule.provideSmsRetriever(gh<_i440.SmartAuth>()),
    );
    gh.lazySingleton<_i364.AuthDataSource>(
      () => _i985.AuthDataSourceImpl(
        firebaseAuth: gh<_i59.FirebaseAuth>(),
        firestore: gh<_i974.FirebaseFirestore>(),
        googleSignIn: gh<_i116.GoogleSignIn>(),
        localSource: gh<_i363.LocalSource>(),
        talker: gh<_i993.Talker>(),
      ),
    );
    gh.lazySingleton<_i688.HomeRepositories>(
      () => _i751.HomeRepositoriesImpl(dataSource: gh<_i68.HomeDataSource>()),
    );
    gh.lazySingleton<_i472.GetBusinessesUsecase>(
      () => _i472.GetBusinessesUsecase(
        repositories: gh<_i688.HomeRepositories>(),
      ),
    );
    gh.lazySingleton<_i143.GetInventoryUsecase>(
      () =>
          _i143.GetInventoryUsecase(repositories: gh<_i688.HomeRepositories>()),
    );
    gh.lazySingleton<_i619.GetProductionLinesUsecase>(
      () => _i619.GetProductionLinesUsecase(
        repositories: gh<_i688.HomeRepositories>(),
      ),
    );
    gh.factory<_i202.HomeBloc>(
      () => _i202.HomeBloc(
        getProductionLines: gh<_i619.GetProductionLinesUsecase>(),
        getInventory: gh<_i143.GetInventoryUsecase>(),
        getBusinesses: gh<_i472.GetBusinessesUsecase>(),
        firebaseAuth: gh<_i59.FirebaseAuth>(),
      ),
    );
    gh.factory<_i469.ProfileBloc>(
      () => _i469.ProfileBloc(
        getUserProfile: gh<_i140.GetUserProfileUsecase>(),
        updateUserName: gh<_i974.UpdateUserNameUsecase>(),
        updateAvatarUrl: gh<_i855.UpdateAvatarUrlUsecase>(),
      ),
    );
    gh.lazySingleton<_i962.AuthRepositories>(
      () => _i394.AuthRepositoriesImpl(dataSource: gh<_i364.AuthDataSource>()),
    );
    gh.lazySingleton<_i494.CheckAuthUsecase>(
      () => _i494.CheckAuthUsecase(repositories: gh<_i962.AuthRepositories>()),
    );
    gh.lazySingleton<_i614.SignInEmailUsecase>(
      () =>
          _i614.SignInEmailUsecase(repositories: gh<_i962.AuthRepositories>()),
    );
    gh.lazySingleton<_i530.SignInGoogleUsecase>(
      () =>
          _i530.SignInGoogleUsecase(repositories: gh<_i962.AuthRepositories>()),
    );
    gh.lazySingleton<_i194.SignOutUsecase>(
      () => _i194.SignOutUsecase(repositories: gh<_i962.AuthRepositories>()),
    );
    gh.lazySingleton<_i606.SignUpEmailUsecase>(
      () =>
          _i606.SignUpEmailUsecase(repositories: gh<_i962.AuthRepositories>()),
    );
    gh.lazySingleton<_i661.AuthBloc>(
      () => _i661.AuthBloc(
        checkAuth: gh<_i494.CheckAuthUsecase>(),
        signInEmail: gh<_i614.SignInEmailUsecase>(),
        signUpEmail: gh<_i606.SignUpEmailUsecase>(),
        signInGoogle: gh<_i530.SignInGoogleUsecase>(),
        signOut: gh<_i194.SignOutUsecase>(),
      ),
    );
    return this;
  }
}

class _$GeneralModule extends _i801.GeneralModule {}
