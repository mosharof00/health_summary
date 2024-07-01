import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../gen/colors.gen.dart';

class AppTextStyleOverFlow extends StatelessWidget {
  const AppTextStyleOverFlow({
    required this.text,
    this.maxLines, this.fontSize,  this.fontWeight,this.height, this.color, this.textAlign,
    super.key,
  });
  final String text;
  final int? maxLines;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? color;
  final TextAlign? textAlign;


  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      textAlign: textAlign ?? TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
        style: GoogleFonts.poppins(
        textStyle: TextStyle(
        color: color ?? ColorName.black,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,

      ),),
    );
  }
}