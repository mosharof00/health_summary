import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../gen/colors.gen.dart';

Widget shimmerLoadingWidget({double? height, double? width, double? borderRadius}) {
  return SizedBox(
    width: width ?? 100.0,
    height:height ?? 100.0,
    child: Shimmer.fromColors(
        baseColor: ColorName.primaryColor.withOpacity(0.1),
        highlightColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          )
        )),
  );
}

Widget shimmerLoadingListVerticalWidget() {
  return Shimmer.fromColors(
    baseColor: Colors.black54,
    highlightColor: Colors.white,
    child: ListView.builder(
      itemBuilder: (_, __) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          color: Colors.white,
          height: 100,
        ),
      ),
      itemCount: 6,
    ),
  );
}
Widget shimmerLoadingListHorizontalWidget({double? height, double? width}) {
  return Shimmer.fromColors(
    baseColor: Colors.black26,
    highlightColor: Colors.white,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, __) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          color: Colors.white,
          height: height ?? 100,
          width: width ?? 100,
        ),
      ),
      itemCount: 6,
    ),
  );
}
