import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:zync_gum/app.dart';
import 'package:zync_gum/core/database/local_source.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:zync_gum/core/di/injection.dart';
import 'package:zync_gum/core/models/app_options.dart';
import 'package:zync_gum/core/services/notification_service.dart';
import 'package:zync_gum/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (!kIsWeb) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  await configureDI();

  await initializeNotification();
  await handleOnTapNotification();

  final talker = sl<Talker>();
  Bloc.observer = TalkerBlocObserver(talker: talker);

  HttpOverrides.global = MyHttpOverrides();

  final localSource = sl<LocalSource>();

  if (localSource.isFirstLaunch) {
    talker.info('[APP] First launch — using defaults');
    await localSource.setFirstLaunchDone();
  }

  final initialTheme = localSource.themeMode;
  final initialLanguage = AppOptions.languageFromCode(localSource.locale);

  talker.info('[APP] Theme: ${initialTheme.name}, Language: ${initialLanguage.name}');

  runApp(
    ModelBinding(
      initialModel: AppOptions(
        themeMode: initialTheme,
        language: initialLanguage,
      ),
      child: const App(),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (cert, host, port) => true;
}
