import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:talker/talker.dart';
import 'package:zync_gum/core/di/injection.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/themes/app_theme.dart';
import 'package:zync_gum/core/utils/firebase_seeder.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/generated/l10n.dart';
import 'package:zync_gum/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = sl<AuthBloc>()..add(const AuthEvent.checkRequested());
  }

  Future<void> _seedOnFirstLogin() async {
    final firestore = sl<FirebaseFirestore>();
    final lines = await firestore.collection('production_lines').limit(1).get();
    if (lines.docs.isNotEmpty) return;

    final seeder = FirebaseSeeder(
      firestore: firestore,
      auth: sl<FirebaseAuth>(),
      talker: sl<Talker>(),
    );
    await seeder.seedAll();
  }

  @override
  Widget build(BuildContext context) {
    final options = context.options;
    return BlocProvider.value(
      value: _authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (prev, curr) => prev.status != curr.status || prev.user != curr.user,
        listener: (context, state) {
          if (state.isUnauthenticated) {
            router.go(Routes.auth);
          } else if (state.isAuthenticated) {
            _seedOnFirstLogin();
            router.go(Routes.home);
          }
        },
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: options.resolvedSystemUiOverlayStyle(),
          child: MaterialApp.router(
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
              Locale('fr'),
            ],
            routerDelegate: router.routerDelegate,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
          ),
        ),
      ),
    );
  }
}
