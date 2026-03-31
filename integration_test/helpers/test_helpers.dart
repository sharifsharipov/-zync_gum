import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zync_gum/core/connectivity/network_info.dart';
import 'package:zync_gum/core/database/local_source.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/app_options.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/core/enums/user_role.dart';
import 'package:zync_gum/features/auth/domain/entities/auth_entity/auth_entity.dart';
import 'package:zync_gum/features/auth/domain/usecases/check_auth_usecase/check_auth_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_email_usecase/sign_in_email_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_in_google_usecase/sign_in_google_usecase.dart';
import 'package:zync_gum/features/auth/domain/usecases/sign_out_usecase/sign_out_usecase.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';
import 'package:zync_gum/features/home/domain/usecases/get_businesses_usecase/get_businesses_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_inventory_usecase/get_inventory_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_production_lines_usecase/get_production_lines_usecase.dart';
import 'package:zync_gum/features/home/presentation/bloc/home_bloc.dart';
import 'package:zync_gum/features/main/presentation/bloc/main_bloc.dart';
import 'package:zync_gum/features/profile/domain/usecases/get_user_profile_usecase/get_user_profile_usecase.dart';
import 'package:zync_gum/features/profile/domain/usecases/update_avatar_url_usecase/update_avatar_url_usecase.dart';
import 'package:zync_gum/features/profile/domain/usecases/update_user_name_usecase/update_user_name_usecase.dart';
import 'package:zync_gum/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:zync_gum/generated/l10n.dart';
import 'package:zync_gum/core/themes/app_theme.dart';
import 'package:zync_gum/router/routes.dart';

import '../../test/helpers/integration_mocks.mocks.dart';
export '../../test/helpers/integration_mocks.mocks.dart';


const tUser = UserEntity(
  id: 'test-uid',
  email: 'test@zyncgum.com',
  name: 'Test User',
  role: UserRole.admin,
  phone: '+998901234567',
  department: 'Production',
  position: 'Manager',
);

final tProductionLines = [
  const ProductionLineEntity(
    id: '1',
    flavor: 'Mint Fresh',
    status: 'running',
    progressPercent: 75.0,
    temperature: 36.5,
    dailyTarget: 1000,
    produced: 750,
  ),
  const ProductionLineEntity(
    id: '2',
    flavor: 'Strawberry',
    status: 'idle',
    progressPercent: 0.0,
    temperature: 22.0,
    dailyTarget: 800,
    produced: 0,
  ),
];

final tInventory = [
  const InventoryEntity(
    id: '1',
    materialName: 'Sugar',
    quantity: 500.0,
    unit: 'kg',
    minLevel: 100.0,
  ),
  const InventoryEntity(
    id: '2',
    materialName: 'Gum Base',
    quantity: 50.0,
    unit: 'kg',
    minLevel: 200.0,
  ),
];

final tBusinesses = [
  const BusinessEntity(
    id: 'b1',
    name: 'Zync Factory',
    type: 'manufacturing',
    monthlyRevenue: 50000.0,
    employeesCount: 25,
    isActive: true,
    address: 'Tashkent, Uzbekistan',
    userId: 'test-uid',
  ),
];


late MockCheckAuthUsecase mockCheckAuth;
late MockSignOutUsecase mockSignOut;
late MockSignInEmailUsecase mockSignInEmail;
late MockSignUpEmailUsecase mockSignUpEmail;
late MockSignInGoogleUsecase mockSignInGoogle;
late MockGetProductionLinesUsecase mockGetProductionLines;
late MockGetInventoryUsecase mockGetInventory;
late MockGetBusinessesUsecase mockGetBusinesses;
late MockGetUserProfileUsecase mockGetUserProfile;
late MockUpdateUserNameUsecase mockUpdateUserName;
late MockUpdateAvatarUrlUsecase mockUpdateAvatarUrl;
late MockFirebaseAuth mockFirebaseAuth;
late MockUser mockUser;

final sl = GetIt.instance;

Future<void> setupTestDI() async {
  await sl.reset();

  mockCheckAuth = MockCheckAuthUsecase();
  mockSignOut = MockSignOutUsecase();
  mockSignInEmail = MockSignInEmailUsecase();
  mockSignUpEmail = MockSignUpEmailUsecase();
  mockSignInGoogle = MockSignInGoogleUsecase();
  mockGetProductionLines = MockGetProductionLinesUsecase();
  mockGetInventory = MockGetInventoryUsecase();
  mockGetBusinesses = MockGetBusinessesUsecase();
  mockGetUserProfile = MockGetUserProfileUsecase();
  mockUpdateUserName = MockUpdateUserNameUsecase();
  mockUpdateAvatarUrl = MockUpdateAvatarUrlUsecase();
  mockFirebaseAuth = MockFirebaseAuth();
  mockUser = MockUser();

  // Provide dummies for Either types
  provideDummy<Either<Failure, UserEntity?>>(
    const Right<Failure, UserEntity?>(null),
  );
  provideDummy<Either<Failure, UserEntity>>(
    const Right(UserEntity(id: '', email: '', name: '')),
  );
  provideDummy<Either<Failure, void>>(const Right(null));

  // Default auth behavior — unauthenticated
  when(mockCheckAuth(any))
      .thenAnswer((_) async => const Right<Failure, UserEntity?>(null));
  when(mockSignOut(any)).thenAnswer((_) async => const Right(null));

  // Default home data
  when(mockFirebaseAuth.currentUser).thenReturn(null);
  when(mockGetProductionLines())
      .thenAnswer((_) => Stream.value(Right(tProductionLines)));
  when(mockGetInventory())
      .thenAnswer((_) => Stream.value(Right(tInventory)));
  when(mockGetBusinesses(any))
      .thenAnswer((_) => Stream.value(Right(tBusinesses)));

  // Register in DI
  sl.registerLazySingleton<CheckAuthUsecase>(() => mockCheckAuth);
  sl.registerLazySingleton<SignOutUsecase>(() => mockSignOut);
  sl.registerFactory<SignInEmailUsecase>(() => mockSignInEmail);
  sl.registerFactory<SignInGoogleUsecase>(() => mockSignInGoogle);
  sl.registerLazySingleton<GetProductionLinesUsecase>(
      () => mockGetProductionLines);
  sl.registerLazySingleton<GetInventoryUsecase>(() => mockGetInventory);
  sl.registerLazySingleton<GetBusinessesUsecase>(() => mockGetBusinesses);
  sl.registerLazySingleton<GetUserProfileUsecase>(() => mockGetUserProfile);
  sl.registerLazySingleton<UpdateUserNameUsecase>(() => mockUpdateUserName);
  sl.registerLazySingleton<UpdateAvatarUrlUsecase>(() => mockUpdateAvatarUrl);
  sl.registerSingleton<FirebaseAuth>(mockFirebaseAuth);

  // BLoCs
  sl.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      checkAuth: mockCheckAuth,
      signInEmail: mockSignInEmail,
      signUpEmail: mockSignUpEmail,
      signInGoogle: mockSignInGoogle,
      signOut: mockSignOut,
    ),
  );
  sl.registerFactory<HomeBloc>(
    () => HomeBloc(
      getProductionLines: mockGetProductionLines,
      getInventory: mockGetInventory,
      getBusinesses: mockGetBusinesses,
      firebaseAuth: mockFirebaseAuth,
    ),
  );
  sl.registerFactory<MainBloc>(() => MainBloc());

  sl.registerFactory<ProfileBloc>(
    () => ProfileBloc(
      getUserProfile: mockGetUserProfile,
      updateUserName: mockUpdateUserName,
      updateAvatarUrl: mockUpdateAvatarUrl,
    ),
  );

  // Infra singletons
  sl.registerSingleton<GlobalKey<NavigatorState>>(GlobalKey<NavigatorState>());
  sl.registerSingleton<PackageInfo>(PackageInfo(
    appName: 'Zync Gum Test',
    packageName: 'com.test',
    version: '1.0.0',
    buildNumber: '1',
  ));
  sl.registerSingleton<InternetConnectionChecker>(
    InternetConnectionChecker.createInstance(
      checkInterval: const Duration(seconds: 30),
    ),
  );

  // LocalSource with in-memory Hive
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  final box = await Hive.openBox<dynamic>('test_box_${DateTime.now().millisecondsSinceEpoch}');
  sl.registerSingleton<LocalSource>(LocalSource(box));
}

// ─── Test app wrapper ────────────────────────────────────────

Widget createTestApp({ThemeMode themeMode = ThemeMode.light}) {
  return ModelBinding(
    initialModel: AppOptions(
      themeMode: themeMode,
      language: AppLanguage.english,
    ),
    child: Builder(
      builder: (context) {
        final options = AppOptions.of(context);
        return MaterialApp.router(
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: options.themeMode,
          debugShowCheckedModeBanner: false,
          locale: options.locale,
          localizationsDelegates: const [
            S.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('ru'),
            Locale('uz'),
            Locale('tg'),
          ],
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
        );
      },
    ),
  );
}

