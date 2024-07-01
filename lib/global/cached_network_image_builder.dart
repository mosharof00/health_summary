import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:health_summary/global/shimmer_loading.dart';


import '../gen/assets.gen.dart';

Widget cachedImageHelper({
  required String imgurl,
  double? shimmerHeight,
  double? shimmerWidth,
  double? imgHeight,
  double? imgWidth,
}) {
  return CachedNetworkImage(
    imageUrl: imgurl,
    fit: BoxFit.fill,
    height: imgHeight,
    width: imgWidth,
    placeholder: (context, url) =>
        shimmerLoadingWidget(height: shimmerHeight , width: shimmerWidth ?? Get.width),
    errorWidget: (context, url, error) => Image.asset(
      Assets.images.errorImage.path,
      height: imgHeight,
      width: Get.width,
    ),
  );
}
