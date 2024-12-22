/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_logo.png
  AssetGenImage get appLogo =>
      const AssetGenImage('assets/images/app_logo.png');

  /// File path: assets/images/auth_welcome.png
  AssetGenImage get authWelcome =>
      const AssetGenImage('assets/images/auth_welcome.png');

  /// File path: assets/images/verify.png
  AssetGenImage get verify => const AssetGenImage('assets/images/verify.png');

  /// List of all assets
  List<AssetGenImage> get values => [appLogo, authWelcome, verify];
}

class $AssetsLocalizationGen {
  const $AssetsLocalizationGen();

  /// File path: assets/localization/translations.csv
  String get translations => 'assets/localization/translations.csv';

  /// List of all assets
  List<String> get values => [translations];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/arrow_circle_back.svg
  SvgGenImage get arrowCircleBack =>
      const SvgGenImage('assets/svgs/arrow_circle_back.svg');

  /// File path: assets/svgs/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/svgs/calendar.svg');

  /// File path: assets/svgs/check_square.svg
  SvgGenImage get checkSquare =>
      const SvgGenImage('assets/svgs/check_square.svg');

  /// File path: assets/svgs/checklist.svg
  SvgGenImage get checklist => const SvgGenImage('assets/svgs/checklist.svg');

  /// File path: assets/svgs/download.svg
  SvgGenImage get download => const SvgGenImage('assets/svgs/download.svg');

  /// File path: assets/svgs/error_icon.svg
  SvgGenImage get errorIcon => const SvgGenImage('assets/svgs/error_icon.svg');

  /// File path: assets/svgs/home.svg
  SvgGenImage get home => const SvgGenImage('assets/svgs/home.svg');

  /// File path: assets/svgs/information.svg
  SvgGenImage get information =>
      const SvgGenImage('assets/svgs/information.svg');

  /// File path: assets/svgs/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/svgs/lock.svg');

  /// File path: assets/svgs/log_out.svg
  SvgGenImage get logOut => const SvgGenImage('assets/svgs/log_out.svg');

  /// File path: assets/svgs/log_out_settings.svg
  SvgGenImage get logOutSettings =>
      const SvgGenImage('assets/svgs/log_out_settings.svg');

  /// File path: assets/svgs/phone_ring.svg
  SvgGenImage get phoneRing => const SvgGenImage('assets/svgs/phone_ring.svg');

  /// File path: assets/svgs/search_outlined.svg
  SvgGenImage get searchOutlined =>
      const SvgGenImage('assets/svgs/search_outlined.svg');

  /// File path: assets/svgs/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/svgs/settings.svg');

  /// File path: assets/svgs/sms.svg
  SvgGenImage get sms => const SvgGenImage('assets/svgs/sms.svg');

  /// File path: assets/svgs/student_hat.svg
  SvgGenImage get studentHat =>
      const SvgGenImage('assets/svgs/student_hat.svg');

  /// File path: assets/svgs/trash_bin.svg
  SvgGenImage get trashBin => const SvgGenImage('assets/svgs/trash_bin.svg');

  /// File path: assets/svgs/update.svg
  SvgGenImage get update => const SvgGenImage('assets/svgs/update.svg');

  /// File path: assets/svgs/users.svg
  SvgGenImage get users => const SvgGenImage('assets/svgs/users.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        arrowCircleBack,
        calendar,
        checkSquare,
        checklist,
        download,
        errorIcon,
        home,
        information,
        lock,
        logOut,
        logOutSettings,
        phoneRing,
        searchOutlined,
        settings,
        sms,
        studentHat,
        trashBin,
        update,
        users
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLocalizationGen localization = $AssetsLocalizationGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
