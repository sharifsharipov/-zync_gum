// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Manrope-Bold.ttf
  String get manropeBold => 'assets/fonts/Manrope-Bold.ttf';

  /// File path: assets/fonts/Manrope-Medium.ttf
  String get manropeMedium => 'assets/fonts/Manrope-Medium.ttf';

  /// File path: assets/fonts/Manrope-Regular.ttf
  String get manropeRegular => 'assets/fonts/Manrope-Regular.ttf';

  /// File path: assets/fonts/Poppins-Bold.ttf
  String get poppinsBold => 'assets/fonts/Poppins-Bold.ttf';

  /// File path: assets/fonts/Poppins-Medium.ttf
  String get poppinsMedium => 'assets/fonts/Poppins-Medium.ttf';

  /// List of all assets
  List<String> get values => [
    manropeBold,
    manropeMedium,
    manropeRegular,
    poppinsBold,
    poppinsMedium,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/achivments.svg
  SvgGenImage get achivments =>
      const SvgGenImage('assets/icons/achivments.svg');

  /// File path: assets/icons/arrow_back.svg
  SvgGenImage get arrowBack => const SvgGenImage('assets/icons/arrow_back.svg');

  /// File path: assets/icons/chevron_right.svg
  SvgGenImage get chevronRight =>
      const SvgGenImage('assets/icons/chevron_right.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  /// File path: assets/icons/finance.svg
  SvgGenImage get finance => const SvgGenImage('assets/icons/finance.svg');

  /// File path: assets/icons/goals.svg
  SvgGenImage get goals => const SvgGenImage('assets/icons/goals.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/idea.svg
  SvgGenImage get idea => const SvgGenImage('assets/icons/idea.svg');

  /// File path: assets/icons/info.svg
  SvgGenImage get info => const SvgGenImage('assets/icons/info.svg');

  /// File path: assets/icons/language.svg
  SvgGenImage get language => const SvgGenImage('assets/icons/language.svg');

  /// File path: assets/icons/log_out.svg
  SvgGenImage get logOut => const SvgGenImage('assets/icons/log_out.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/person.svg
  SvgGenImage get person => const SvgGenImage('assets/icons/person.svg');

  /// File path: assets/icons/roller.svg
  SvgGenImage get roller => const SvgGenImage('assets/icons/roller.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/subscription.svg
  SvgGenImage get subscription =>
      const SvgGenImage('assets/icons/subscription.svg');

  /// File path: assets/icons/theme.svg
  SvgGenImage get theme => const SvgGenImage('assets/icons/theme.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    achivments,
    arrowBack,
    chevronRight,
    edit,
    finance,
    goals,
    home,
    idea,
    info,
    language,
    logOut,
    notification,
    person,
    roller,
    settings,
    subscription,
    theme,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
