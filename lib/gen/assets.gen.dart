/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/colors.xml
  String get colors => 'assets/color/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/dashboard.png
  AssetGenImage get dashboard =>
      const AssetGenImage('assets/icons/dashboard.png');

  /// File path: assets/icons/footprints.png
  AssetGenImage get footprints =>
      const AssetGenImage('assets/icons/footprints.png');

  /// File path: assets/icons/glass-of-water.png
  AssetGenImage get glassOfWater =>
      const AssetGenImage('assets/icons/glass-of-water.png');

  /// File path: assets/icons/thunderbolt.png
  AssetGenImage get thunderbolt =>
      const AssetGenImage('assets/icons/thunderbolt.png');

  /// File path: assets/icons/waterdrop.png
  AssetGenImage get waterdrop =>
      const AssetGenImage('assets/icons/waterdrop.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [dashboard, footprints, glassOfWater, thunderbolt, waterdrop];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/error-image.png
  AssetGenImage get errorImage =>
      const AssetGenImage('assets/images/error-image.png');

  /// File path: assets/images/graph.jpeg
  AssetGenImage get graphJpeg =>
      const AssetGenImage('assets/images/graph.jpeg');

  /// File path: assets/images/graph.png
  AssetGenImage get graphPng => const AssetGenImage('assets/images/graph.png');

  /// File path: assets/images/model.jpg
  AssetGenImage get model => const AssetGenImage('assets/images/model.jpg');

  /// File path: assets/images/play.png
  AssetGenImage get play => const AssetGenImage('assets/images/play.png');

  /// File path: assets/images/six.jpeg
  AssetGenImage get six => const AssetGenImage('assets/images/six.jpeg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [errorImage, graphJpeg, graphPng, model, play, six];
}

class Assets {
  Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
