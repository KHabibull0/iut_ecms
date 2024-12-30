import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';

class ResizableTextfield extends StatelessWidget {
  const ResizableTextfield({
    super.key,
    required this.hintText,
    this.onChanged,
    this.onTap,
    this.controller,
    this.cursorHeight,
    this.fillColor,
    this.borderColor,
    this.height,
    this.width,
    this.contentPadding,
    this.borderRadius,
    this.hintTextColor,
    this.prefixIcon,
  });

  final String hintText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final TextEditingController? controller;
  final double? cursorHeight;
  final Color? fillColor;
  final Color? hintTextColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? contentPadding;
  final double? borderRadius;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 41,
      width: width,
      child: TextFormField(
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,
        cursorHeight: cursorHeight ?? 20,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: hintTextColor ?? AppColors.label,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: borderColor ?? AppColors.containerBorder,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: borderColor ?? AppColors.containerBorder,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: borderColor ?? AppColors.containerBorder,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
          filled: true,
          fillColor: fillColor ?? AppColors.white,
          contentPadding: contentPadding ?? EdgeInsets.only(bottom: 6, left: 12, right: 12),
        ),
      ),
    );
  }
}
