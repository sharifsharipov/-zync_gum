import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:zync_gum/router/routes.dart';

enum AppLanguage { uzbek, russian, english, tajik }

class AppOptions extends Equatable {
  const AppOptions({required this.themeMode, required this.language});

  final ThemeMode themeMode;
  final AppLanguage language;

  Locale get locale => _languageToLocale(language);

  SystemUiOverlayStyle resolvedSystemUiOverlayStyle() {
    Brightness brightness;
    switch (themeMode) {
      case ThemeMode.light:
        brightness = Brightness.light;
      case ThemeMode.dark:
        brightness = Brightness.dark;
      case ThemeMode.system:
        brightness =
            WidgetsBinding.instance.platformDispatcher.platformBrightness;
    }

    final overlayStyle = brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;

    return overlayStyle;
  }

  AppOptions copyWith({ThemeMode? themeMode, AppLanguage? language}) =>
      AppOptions(
        themeMode: themeMode ?? this.themeMode,
        language: language ?? this.language,
      );

  static AppOptions of(BuildContext context) {
    final scope = context
        .dependOnInheritedWidgetOfExactType<_ModelBindingScope>();
    assert(scope != null, 'No ModelBindingScope found in context');
    return scope!.modelBindingState.currentModel;
  }

  static void update(BuildContext context, AppOptions newModel) {
    final scope = context
        .dependOnInheritedWidgetOfExactType<_ModelBindingScope>();
    assert(scope != null, 'No ModelBindingScope found in context');

    scope!.modelBindingState.updateModel(newModel);

    final localeCode = _languageToLocaleCode(newModel.language);
    localSource.setLocale(localeCode);
    localSource.setThemeMode(newModel.themeMode);
  }

  static void updateLanguage(BuildContext context, AppLanguage language) {
    final currentOptions = AppOptions.of(context);
    final newOptions = currentOptions.copyWith(language: language);
    update(context, newOptions);
  }

  static void updateThemeMode(BuildContext context, ThemeMode themeMode) {
    final currentOptions = AppOptions.of(context);
    final newOptions = currentOptions.copyWith(themeMode: themeMode);
    update(context, newOptions);
  }

  static AppLanguage languageFromCode(String code) => switch (code) {
    'uz' => AppLanguage.uzbek,
    'ru' => AppLanguage.russian,
    'en' => AppLanguage.english,
    'fr' => AppLanguage.tajik,

    _ => AppLanguage.english,
  };

  static String _languageToLocaleCode(AppLanguage language) =>
      switch (language) {
        AppLanguage.uzbek => 'uz',
        AppLanguage.russian => 'ru',
        AppLanguage.english => 'en',
        AppLanguage.tajik => 'fr',
      };

  static Locale _languageToLocale(AppLanguage language) =>
      Locale(_languageToLocaleCode(language));

  @override
  List<Object> get props => [themeMode, language];
}

class _ModelBindingScope extends InheritedWidget {
  const _ModelBindingScope({
    required this.modelBindingState,
    required this.currentModel,
    required super.child,
  });

  final _ModelBindingState modelBindingState;
  final AppOptions currentModel;

  @override
  bool updateShouldNotify(_ModelBindingScope oldWidget) =>
      currentModel != oldWidget.currentModel;
}

class ModelBinding extends StatefulWidget {
  const ModelBinding({
    super.key,
    required this.initialModel,
    required this.child,
  });

  final AppOptions initialModel;
  final Widget child;

  @override
  State<ModelBinding> createState() => _ModelBindingState();
}

class _ModelBindingState extends State<ModelBinding> {
  late AppOptions currentModel;

  @override
  void initState() {
    super.initState();
    currentModel = widget.initialModel;
  }

  void updateModel(AppOptions newModel) {
    if (newModel != currentModel) {
      setState(() {
        currentModel = newModel;
      });
    }
  }

  @override
  void didUpdateWidget(ModelBinding oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialModel != widget.initialModel) {
      currentModel = widget.initialModel;
    }
  }

  @override
  Widget build(BuildContext context) => _ModelBindingScope(
    modelBindingState: this,
    currentModel: currentModel,
    child: widget.child,
  );
}
