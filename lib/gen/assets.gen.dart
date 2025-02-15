/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/beauty.png
  AssetGenImage get beauty => const AssetGenImage('assets/images/beauty.png');

  /// File path: assets/images/fashion.png
  AssetGenImage get fashion => const AssetGenImage('assets/images/fashion.png');

  /// File path: assets/images/get_started.png
  AssetGenImage get getStarted =>
      const AssetGenImage('assets/images/get_started.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/kids.png
  AssetGenImage get kids => const AssetGenImage('assets/images/kids.png');

  /// File path: assets/images/mens.png
  AssetGenImage get mens => const AssetGenImage('assets/images/mens.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/sale_image.png
  AssetGenImage get saleImage =>
      const AssetGenImage('assets/images/sale_image.png');

  /// File path: assets/images/special_offers.png
  AssetGenImage get specialOffers =>
      const AssetGenImage('assets/images/special_offers.png');

  /// File path: assets/images/woman.png
  AssetGenImage get woman => const AssetGenImage('assets/images/woman.png');

  /// File path: assets/images/womens.png
  AssetGenImage get womens => const AssetGenImage('assets/images/womens.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    beauty,
    fashion,
    getStarted,
    google,
    kids,
    mens,
    profile,
    saleImage,
    specialOffers,
    woman,
    womens,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Stylish_word.svg
  String get stylishWord => 'assets/svg/Stylish_word.svg';

  /// File path: assets/svg/alarm.svg
  String get alarm => 'assets/svg/alarm.svg';

  /// File path: assets/svg/apple.svg
  String get apple => 'assets/svg/apple.svg';

  /// File path: assets/svg/arrow.svg
  String get arrow => 'assets/svg/arrow.svg';

  /// File path: assets/svg/facebook.svg
  String get facebook => 'assets/svg/facebook.svg';

  /// File path: assets/svg/fashion.svg
  String get fashion => 'assets/svg/fashion.svg';

  /// File path: assets/svg/filter.svg
  String get filter => 'assets/svg/filter.svg';

  /// File path: assets/svg/google.svg
  String get google => 'assets/svg/google.svg';

  /// File path: assets/svg/kids.svg
  String get kids => 'assets/svg/kids.svg';

  /// File path: assets/svg/logo.svg
  String get logo => 'assets/svg/logo.svg';

  /// File path: assets/svg/mens.svg
  String get mens => 'assets/svg/mens.svg';

  /// File path: assets/svg/menu.svg
  String get menu => 'assets/svg/menu.svg';

  /// File path: assets/svg/onboarding_1.svg
  String get onboarding1 => 'assets/svg/onboarding_1.svg';

  /// File path: assets/svg/onboarding_2.svg
  String get onboarding2 => 'assets/svg/onboarding_2.svg';

  /// File path: assets/svg/onboarding_3.svg
  String get onboarding3 => 'assets/svg/onboarding_3.svg';

  /// File path: assets/svg/profile.svg
  String get profile => 'assets/svg/profile.svg';

  /// File path: assets/svg/sale_image.svg
  String get saleImage => 'assets/svg/sale_image.svg';

  /// File path: assets/svg/special_offers.svg
  String get specialOffers => 'assets/svg/special_offers.svg';

  /// File path: assets/svg/stylish_logo.svg
  String get stylishLogo => 'assets/svg/stylish_logo.svg';

  /// File path: assets/svg/up_down_arrow.svg
  String get upDownArrow => 'assets/svg/up_down_arrow.svg';

  /// File path: assets/svg/woman.svg
  String get woman => 'assets/svg/woman.svg';

  /// File path: assets/svg/womens.svg
  String get womens => 'assets/svg/womens.svg';

  /// List of all assets
  List<String> get values => [
    stylishWord,
    alarm,
    apple,
    arrow,
    facebook,
    fashion,
    filter,
    google,
    kids,
    logo,
    mens,
    menu,
    onboarding1,
    onboarding2,
    onboarding3,
    profile,
    saleImage,
    specialOffers,
    stylishLogo,
    upDownArrow,
    woman,
    womens,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

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
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
