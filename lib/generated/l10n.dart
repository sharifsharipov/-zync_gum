// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message('Hello World!', name: 'helloWorld', desc: '', args: []);
  }

  /// `Welcome to our application!`
  String get welcomeMessage {
    return Intl.message(
      'Welcome to our application!',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Goodbye, see you soon!`
  String get goodbyeMessage {
    return Intl.message(
      'Goodbye, see you soon!',
      name: 'goodbyeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for using our application!`
  String get thankYou {
    return Intl.message(
      'Thank you for using our application!',
      name: 'thankYou',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message('Tomorrow', name: 'tomorrow', desc: '', args: []);
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message('Yesterday', name: 'yesterday', desc: '', args: []);
  }

  /// `Connection timed out. Please try again.`
  String get connectionTimeOut {
    return Intl.message(
      'Connection timed out. Please try again.',
      name: 'connectionTimeOut',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.`
  String get somethingWrong {
    return Intl.message(
      'Something went wrong.',
      name: 'somethingWrong',
      desc: '',
      args: [],
    );
  }

  /// `Server error. Please try again later.`
  String get serverError {
    return Intl.message(
      'Server error. Please try again later.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password.`
  String get invalidPassword {
    return Intl.message(
      'Invalid password.',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `User not found.`
  String get userNotFound {
    return Intl.message(
      'User not found.',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized. Please login again.`
  String get unauthorizedMessage {
    return Intl.message(
      'Unauthorized. Please login again.',
      name: 'unauthorizedMessage',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred.`
  String get unexpectedError {
    return Intl.message(
      'An unexpected error occurred.',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Home page description`
  String get homeDescription {
    return Intl.message(
      'Home page description',
      name: 'homeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Goals page description`
  String get goalsDescription {
    return Intl.message(
      'Goals page description',
      name: 'goalsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get auth {
    return Intl.message('Authorization', name: 'auth', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `Add expense`
  String get addExpense {
    return Intl.message('Add expense', name: 'addExpense', desc: '', args: []);
  }

  /// `Achievements`
  String get achievements {
    return Intl.message(
      'Achievements',
      name: 'achievements',
      desc: '',
      args: [],
    );
  }

  /// `Subscriptions`
  String get subscriptions {
    return Intl.message(
      'Subscriptions',
      name: 'subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Automation rules`
  String get automationsRules {
    return Intl.message(
      'Automation rules',
      name: 'automationsRules',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Subscription`
  String get subscription {
    return Intl.message(
      'Subscription',
      name: 'subscription',
      desc: '',
      args: [],
    );
  }

  /// `User Information`
  String get userInformation {
    return Intl.message(
      'User Information',
      name: 'userInformation',
      desc: '',
      args: [],
    );
  }

  /// `Finance`
  String get finance {
    return Intl.message('Finance', name: 'finance', desc: '', args: []);
  }

  /// `Finance page description`
  String get financeDescriptionPage {
    return Intl.message(
      'Finance page description',
      name: 'financeDescriptionPage',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Goals`
  String get goals {
    return Intl.message('Goals', name: 'goals', desc: '', args: []);
  }

  /// `Habits`
  String get habits {
    return Intl.message('Habits', name: 'habits', desc: '', args: []);
  }

  /// `Achivments`
  String get achivments {
    return Intl.message('Achivments', name: 'achivments', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `About Application`
  String get aboutApplication {
    return Intl.message(
      'About Application',
      name: 'aboutApplication',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Light`
  String get light {
    return Intl.message('Light', name: 'light', desc: '', args: []);
  }

  /// `Dark`
  String get dark {
    return Intl.message('Dark', name: 'dark', desc: '', args: []);
  }

  /// `System`
  String get system {
    return Intl.message('System', name: 'system', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Notification restriction`
  String get notificationRestriction {
    return Intl.message(
      'Notification restriction',
      name: 'notificationRestriction',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Corporate Management System`
  String get corporateSystem {
    return Intl.message(
      'Corporate Management System',
      name: 'corporateSystem',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email`
  String get enterEmail {
    return Intl.message('Enter Email', name: 'enterEmail', desc: '', args: []);
  }

  /// `Enter a valid email`
  String get invalidEmail {
    return Intl.message(
      'Enter a valid email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter Password`
  String get enterPassword {
    return Intl.message(
      'Enter Password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordLength {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'passwordLength',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  /// `Sign In with Google`
  String get signInGoogle {
    return Intl.message(
      'Sign In with Google',
      name: 'signInGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get logoutConfirm {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'logoutConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Profile updated successfully`
  String get profileUpdated {
    return Intl.message(
      'Profile updated successfully',
      name: 'profileUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Expense`
  String get expense {
    return Intl.message('Expense', name: 'expense', desc: '', args: []);
  }

  /// `Expense added successfully`
  String get expenseAdded {
    return Intl.message(
      'Expense added successfully',
      name: 'expenseAdded',
      desc: '',
      args: [],
    );
  }

  /// `Raw Materials`
  String get rawMaterials {
    return Intl.message(
      'Raw Materials',
      name: 'rawMaterials',
      desc: '',
      args: [],
    );
  }

  /// `Equipment Maintenance`
  String get equipmentMaintenance {
    return Intl.message(
      'Equipment Maintenance',
      name: 'equipmentMaintenance',
      desc: '',
      args: [],
    );
  }

  /// `Salaries`
  String get salaries {
    return Intl.message('Salaries', name: 'salaries', desc: '', args: []);
  }

  /// `Utilities`
  String get utilities {
    return Intl.message('Utilities', name: 'utilities', desc: '', args: []);
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `Title`
  String get titleField {
    return Intl.message('Title', name: 'titleField', desc: '', args: []);
  }

  /// `Amount`
  String get amount {
    return Intl.message('Amount', name: 'amount', desc: '', args: []);
  }

  /// `Category`
  String get category {
    return Intl.message('Category', name: 'category', desc: '', args: []);
  }

  /// `Description`
  String get descriptionField {
    return Intl.message(
      'Description',
      name: 'descriptionField',
      desc: '',
      args: [],
    );
  }

  /// `Enter title`
  String get enterTitle {
    return Intl.message('Enter title', name: 'enterTitle', desc: '', args: []);
  }

  /// `Enter amount`
  String get enterAmount {
    return Intl.message(
      'Enter amount',
      name: 'enterAmount',
      desc: '',
      args: [],
    );
  }

  /// `Select category`
  String get selectCategory {
    return Intl.message(
      'Select category',
      name: 'selectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid amount`
  String get invalidAmount {
    return Intl.message(
      'Enter a valid amount',
      name: 'invalidAmount',
      desc: '',
      args: [],
    );
  }

  /// `Running`
  String get running {
    return Intl.message('Running', name: 'running', desc: '', args: []);
  }

  /// `Idle`
  String get idle {
    return Intl.message('Idle', name: 'idle', desc: '', args: []);
  }

  /// `Stopped`
  String get stopped {
    return Intl.message('Stopped', name: 'stopped', desc: '', args: []);
  }

  /// `Daily plan: {produced}/{target}`
  String dailyPlan(Object produced, Object target) {
    return Intl.message(
      'Daily plan: $produced/$target',
      name: 'dailyPlan',
      desc: '',
      args: [produced, target],
    );
  }

  /// `Temperature: {value}°C`
  String temperature(Object value) {
    return Intl.message(
      'Temperature: $value°C',
      name: 'temperature',
      desc: '',
      args: [value],
    );
  }

  /// `Low stock`
  String get lowStock {
    return Intl.message('Low stock', name: 'lowStock', desc: '', args: []);
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `My businesses`
  String get myBusinesses {
    return Intl.message(
      'My businesses',
      name: 'myBusinesses',
      desc: '',
      args: [],
    );
  }

  /// `Production lines`
  String get productionLines {
    return Intl.message(
      'Production lines',
      name: 'productionLines',
      desc: '',
      args: [],
    );
  }

  /// `Warehouse status`
  String get warehouseStatus {
    return Intl.message(
      'Warehouse status',
      name: 'warehouseStatus',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get noData {
    return Intl.message('No data', name: 'noData', desc: '', args: []);
  }

  /// `Active`
  String get active {
    return Intl.message('Active', name: 'active', desc: '', args: []);
  }

  /// `Inactive`
  String get inactive {
    return Intl.message('Inactive', name: 'inactive', desc: '', args: []);
  }

  /// `User`
  String get user {
    return Intl.message('User', name: 'user', desc: '', args: []);
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Create a new account`
  String get createAccount {
    return Intl.message(
      'Create a new account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Enter your full name`
  String get enterFullName {
    return Intl.message(
      'Enter your full name',
      name: 'enterFullName',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uz'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
