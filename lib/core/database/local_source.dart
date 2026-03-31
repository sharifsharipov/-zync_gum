import 'package:zync_gum/core/database/local_source_keys.dart';
import 'package:zync_gum/core/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:hive/hive.dart';


final class LocalSource {
  LocalSource(this.box);

  final Box<dynamic> box;

  bool get isFirstLaunch =>
      box.get(LocalSourceKeys.isFirstLaunch, defaultValue: true);

  Future<void> setFirstLaunchDone() async {
    await box.put(LocalSourceKeys.isFirstLaunch, false);
  }

  int get userId => box.get(LocalSourceKeys.userId, defaultValue: 0);

  String get phone => box.get(LocalSourceKeys.phone, defaultValue: '');

  bool get hasProfile =>
      box.get(LocalSourceKeys.hasProfile, defaultValue: false);

  Future<void> setHasProfile({required bool value}) async {
    await box.put(LocalSourceKeys.hasProfile, value);
  }

  Future<void> setLocale(String locale) async {
    await box.put(LocalSourceKeys.locale, locale);
  }

  String get locale =>
      box.get(LocalSourceKeys.locale, defaultValue: defaultLocale);

  ThemeMode get themeMode => switch (box.get(LocalSourceKeys.themeMode)) {
    'system' => ThemeMode.system,
    'light' => ThemeMode.light,
    'dark' => ThemeMode.dark,
    _ => ThemeMode.system,
  };

  Future<void> setThemeMode(ThemeMode mode) async {
    await box.put(LocalSourceKeys.themeMode, mode.name);
  }

  Future<void> setAccessToken(String accessToken) async {
    await box.put(LocalSourceKeys.accessToken, accessToken);
  }

  String get profileImage =>
      box.get(LocalSourceKeys.profileImage, defaultValue: '');

  String get accessToken =>
      box.get(LocalSourceKeys.accessToken, defaultValue: '');

  Future<void> setRefreshToken(String refresh) async {
    await box.put(LocalSourceKeys.refreshToken, refresh);
  }

  String get refreshToken =>
      box.get(LocalSourceKeys.refreshToken, defaultValue: '');

  Future<void> setFullName(String firstName) async {
    await box.put(LocalSourceKeys.fullName, firstName);
  }

  String get fullName => box.get(LocalSourceKeys.fullName, defaultValue: '');

  Future<void> setCache(String key, String value) async {
    await box.put(key, value);
  }

  String getCache(String key) => box.get(key, defaultValue: '');

  Future<void> clear() async {
    await box.clear();
  }
}
