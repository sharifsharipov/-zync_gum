import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:zync_gum/core/connectivity/network_info.dart';
import 'package:zync_gum/core/services/sms_retriever.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../database/local_source.dart';

@module
abstract class GeneralModule {
  @preResolve
  @singleton
  Future<LocalSource> provideLocalSource() async {
    const boxName = 'zync_gum_box';
    final Directory directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    final box = await Hive.openBox<dynamic>(boxName);
    return LocalSource(box);
  }

  @singleton
  GlobalKey<NavigatorState> provideNavigatorKey() =>
      GlobalKey<NavigatorState>();

  @preResolve
  @singleton
  Future<PackageInfo> providePackageInfo() => PackageInfo.fromPlatform();

  @singleton
  InternetConnectionChecker provideConnectivity() =>
      InternetConnectionChecker.createInstance(
        checkInterval: const Duration(seconds: 3),
      );

  @singleton
  FirebaseAuth provideFirebaseAuth() => FirebaseAuth.instance;

  @singleton
  FirebaseFirestore provideFirestore() => FirebaseFirestore.instance;

  @singleton
  GoogleSignIn provideGoogleSignIn() => GoogleSignIn(
        serverClientId:
            '403213553943-obtt1pru31rv0mgsnb4smekc82lrpasu.apps.googleusercontent.com',
      );

  @singleton
  SmartAuth provideSmartAuth() => SmartAuth.instance;

  @singleton
  SmsRetriever provideSmsRetriever(SmartAuth smartAuth) =>
      SmsRetrieverImpl(smartAuth);

  @singleton
  Talker provideTalker() => TalkerFlutter.init(
        settings: TalkerSettings(
          useConsoleLogs: true,
          maxHistoryItems: 200,
        ),
      );
}
