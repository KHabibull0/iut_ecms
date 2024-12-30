import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    this.hint,
    this.controller,
    this.obscureText = false,
    this.prefixIcon,
    this.errorText,
    this.onChanged,
    this.inputType,
    this.inputFormatter,
    this.enabled,
    this.suffixText,
    this.allocateErrorSpace = false,
    this.next = false,
    this.suffixIcon,
    this.onTap,
    this.autoFocus = false,
    this.backgroundColor,
    this.maxLines,
    this.maxLength,
    this.initialValue,
    this.focusNode,
    this.onEditingComplete,
    this.prefix,
    this.prefixText,
    this.prefixStyle,
    this.counterText,
    this.validator,
    this.errorMaxLines,
    this.borderRadius,
    this.readOnly,
    this.cursorHeight,
    this.borderColor,
  });

  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? suffixText;
  final TextEditingController? controller;
  final bool obscureText;
  final bool? enabled;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatter;
  final bool allocateErrorSpace;
  final bool next;
  final GestureTapCallback? onTap;
  final bool autoFocus;
  final Color? backgroundColor;
  final int? maxLines;
  final int? maxLength;
  final String? initialValue;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final Widget? prefix;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final String? counterText;
  final String? Function(String?)? validator;
  final int? errorMaxLines;
  final double? borderRadius;
  final bool? readOnly;
  final double? cursorHeight;
  final Color? borderColor;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool passwordVisible = false;

  @override
  void initState() {
    passwordVisible = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLength: widget.maxLength,
          validator: widget.validator,
          cursorHeight: widget.cursorHeight,
          maxLines: widget.maxLines,
          enabled: widget.enabled,
          readOnly: widget.readOnly ?? false,
          controller: widget.controller,
          autofocus: widget.autoFocus,
          onTap: widget.onTap,
          onChanged: widget.onChanged,
          keyboardType: widget.inputType,
          focusNode: widget.focusNode,
          inputFormatters: widget.inputFormatter,
          cursorColor: AppColors.secondary,
          textInputAction: widget.next ? TextInputAction.next : TextInputAction.done,
          onEditingComplete: widget.onEditingComplete,
          onFieldSubmitted: (_) =>
              widget.next ? FocusScope.of(context).nextFocus() : FocusScope.of(context).unfocus(),
          initialValue: widget.initialValue,
          decoration: InputDecoration(
            errorMaxLines: widget.errorMaxLines ?? 1,
            errorStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.red,
            ),
            prefix: widget.prefix,
            prefixText: widget.prefixText,
            prefixStyle: widget.prefixStyle ??
                TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.label,
                ),
            contentPadding: const EdgeInsets.only(right: 12, left: 12),
            suffixText: widget.suffixText,
            errorText: widget.errorText,
            prefixIcon: widget.prefixIcon,
            counterText: widget.counterText,
            hintText: widget.hint,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.label,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.borderColor ?? AppColors.containerBorder,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 50),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.borderColor ?? AppColors.containerBorder,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 50),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.borderColor ?? AppColors.containerBorder,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 50),
            ),
            filled: true,
            fillColor: widget.backgroundColor ?? AppColors.white,
            suffixIcon: widget.suffixIcon,
          ),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.headline,
          ),
          obscureText: passwordVisible,
        ),
        SizedBox(
          height: widget.errorText == null && widget.allocateErrorSpace ? 22 : 0,
        ),
      ],
    );
  }
}
