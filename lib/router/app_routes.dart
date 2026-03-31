part of 'routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    sl<GlobalKey<NavigatorState>>();

final PackageInfo packageInfo = sl<PackageInfo>();
final NetworkInfo networkInfo = sl<NetworkInfo>();
final LocalSource localSource = sl<LocalSource>();

const _roleRestrictedRoutes = <String, Set<UserRole>>{};

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.splash,
  debugLogDiagnostics: true,
  redirect: (context, state) {
    final authState = sl<AuthBloc>().state;
    final path = state.matchedLocation;

    final allowedRoles = _roleRestrictedRoutes[path];
    if (allowedRoles == null) return null;

    final user = authState.user;
    if (user == null) return Routes.auth;
    if (!allowedRoles.contains(user.role)) return Routes.home;

    return null;
  },
  routes: [
    GoRoute(
      path: Routes.splash,
      name: Routes.splash,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const _SplashPage(),
    ),
    GoRoute(
      path: Routes.auth,
      name: Routes.auth,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const AuthPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (_, __, navigationShell) => BlocProvider(
        create: (context) => sl<MainBloc>(),
        child: MainPage(navigationShell: navigationShell),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              name: Routes.home,
              builder: (_, __) => BlocProvider(
                create: (_) => sl<HomeBloc>(),
                child: const HomePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile,
              name: Routes.profile,
              builder: (_, __) => const ProfilePage(),
            ),
            GoRoute(
              path: Routes.language,
              name: Routes.language,
              builder: (_, __) => const LanguagePage(),
            ),
            GoRoute(
              path: Routes.theme,
              name: Routes.theme,
              builder: (_, __) => const ThemePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class _SplashPage extends StatelessWidget {
  const _SplashPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
