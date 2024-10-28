/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $MockDataGen {
  const $MockDataGen();

  /// File path: mock_data/mock_response.json
  String get mockResponse => 'mock_data/mock_response.json';

  /// List of all assets
  List<String> get values => [mockResponse];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/alien-icon.svg
  String get alienIcon => 'assets/icons/alien-icon.svg';

  /// File path: assets/icons/alive-icon.svg
  String get aliveIcon => 'assets/icons/alive-icon.svg';

  /// File path: assets/icons/dead-icon.svg
  String get deadIcon => 'assets/icons/dead-icon.svg';

  /// File path: assets/icons/female-icon.svg
  String get femaleIcon => 'assets/icons/female-icon.svg';

  /// File path: assets/icons/gender-unknown.svg
  String get genderUnknown => 'assets/icons/gender-unknown.svg';

  /// File path: assets/icons/heart_filled.svg
  String get heartFilled => 'assets/icons/heart_filled.svg';

  /// File path: assets/icons/heart_outlined.svg
  String get heartOutlined => 'assets/icons/heart_outlined.svg';

  /// File path: assets/icons/human-icon.svg
  String get humanIcon => 'assets/icons/human-icon.svg';

  /// File path: assets/icons/male-icon.svg
  String get maleIcon => 'assets/icons/male-icon.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// File path: assets/icons/status-unknown.svg
  String get statusUnknown => 'assets/icons/status-unknown.svg';

  /// List of all assets
  List<String> get values => [
        alienIcon,
        aliveIcon,
        deadIcon,
        femaleIcon,
        genderUnknown,
        heartFilled,
        heartOutlined,
        humanIcon,
        maleIcon,
        share,
        statusUnknown
      ];
}

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/logo-rick-and-morty.png
  AssetGenImage get logoRickAndMorty =>
      const AssetGenImage('assets/img/logo-rick-and-morty.png');

  /// List of all assets
  List<AssetGenImage> get values => [logoRickAndMorty];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImgGen img = $AssetsImgGen();
  static const $MockDataGen mockData = $MockDataGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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
