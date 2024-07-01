import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../gen/colors.gen.dart';
import 'package:get/get.dart';


class AppTextStyle extends StatelessWidget {
  const AppTextStyle({
    required this.text,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.color,
    this.textAlign,
    this.decoration,
    super.key,
  });
  final String text;
  final int? maxLines;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: textAlign ?? TextAlign.center,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        color: color ?? ColorName.black,
        fontSize: fontSize,
        // fontFamily: FontFamily.lato,
        fontWeight: fontWeight,
        height: height,
        decoration: decoration,
      )),
    );
  }
}
