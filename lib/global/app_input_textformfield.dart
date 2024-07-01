import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppInputTextFormField extends StatelessWidget {
  const AppInputTextFormField(
      {super.key,
      this.controller,
      this.hintText,
      this.expands,
      this.labelText,
      this.validator,
      this.autoValidateMode,
      this.obscureText,
      this.keyboardType,
      this.suffixIcon,
      this.prefixIcon,
      this.enabled,
      this.readOnly,
      this.maxLength,
      this.maxLines,
      this.minLines,
      this.onChanged,
      this.onTap,
      this.onSaved,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.textInputAction,
      this.focusNode,
      this.autofocus,
      this.contentPadding,
      this.margin,
      this.fillColor,
      this.cursorColor,
      this.enabledBorderColor,
      this.focusedBorderColor,
      this.disabledBorderColor,
      this.errorBorderColor,
      this.errorTextColor,
      this.hintTextColor,
      this.labelTextColor,
      this.textColor,
      this.fontSize,
      this.borderWidth,
      this.borderRadius,
      this.height,
      this.width,
      this.suffix,
      this.prefix,
      this.fontWeight});
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final bool? enabled;
  final bool? readOnly;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final void Function(String?)? onChanged;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final void Function(String?)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? margin;
  final Color? fillColor;
  final Color? cursorColor;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? disabledBorderColor;
  final Color? errorBorderColor;
  final Color? errorTextColor;
  final Color? hintTextColor;
  final Color? labelTextColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderWidth;
  final double? borderRadius;
  final double? height;
  final double? width;
  final bool? expands;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        expands: expands ?? false,
        key: key,
        maxLines: maxLines ?? 1,
        minLines: minLines ?? 1,
        controller: controller,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        validator: validator,
        autovalidateMode: autoValidateMode?? AutovalidateMode.always,
        enabled: enabled ?? true,
        readOnly: readOnly ?? false,
        maxLength: maxLength,
        onChanged: onChanged,
        onTap: onTap,
        onSaved: onSaved,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        cursorColor: cursorColor ?? Colors.black,
        style: TextStyle(
          color: textColor ?? Colors.black,
          fontSize: fontSize ?? 14.sp,
        ),
        decoration: InputDecoration(
          contentPadding: contentPadding ?? const EdgeInsets.all(10),
          fillColor: fillColor ?? const Color(0xFFe9ecef),
          filled: true,
          hintText: hintText!.tr ?? "",
          hintStyle: TextStyle(
            color: hintTextColor ?? Colors.grey,
            fontSize: fontSize ?? 14.sp,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: labelTextColor ?? Colors.black,
            fontSize: fontSize ?? 14.sp,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          prefix: prefix,
          suffix: suffix,
          prefixIconConstraints:
              BoxConstraints(maxWidth: 50.w, minWidth: 50.w, maxHeight: 20.h),
          suffixIconConstraints:
              BoxConstraints(maxWidth: 50.w, minWidth: 50.w, maxHeight: 20.h),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            borderSide: BorderSide(
              color: focusedBorderColor ?? const Color(0xFFadb5bd),
              width: borderWidth ?? 1,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            borderSide: BorderSide(
              color: disabledBorderColor ?? Colors.grey,
              width: borderWidth ?? 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            borderSide: BorderSide(
              color: errorBorderColor ?? Colors.red,
              width: borderWidth ?? 1,
            ),
          ),
          errorStyle: TextStyle(
            color: errorTextColor ?? Colors.red,
            fontSize: fontSize ?? 14.sp,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
