import 'package:flutter/material.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';

class CommonButton extends StatelessWidget {
  const CommonButton._(
    this.text,
    this.loading,
    this.shadow,
    this.enabled,
    this.onPressed,
    this.type, {
    super.key,
    this.radius,
    this.borderColor,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.padding,
    this.prefixIcon,
    this.elevation,
    this.suffixIcon,
    this.shadowColor,
  });

  final String text;
  final bool loading;
  final bool shadow;
  final bool enabled;
  final VoidCallback? onPressed;
  final double? radius;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? shadowColor;
  final Widget? icon;
  final double? padding;
  final CommonButtonType type;
  final Widget? prefixIcon;
  final double? elevation;
  final Widget? suffixIcon;

  const CommonButton.outlined({
    required String text,
    bool loading = false,
    bool shadow = false,
    bool enabled = true,
    VoidCallback? onPressed,
    double? radius,
    Color? backgroundColor,
    Color? borderColor,
    Color? textColor,
    Key? key,
    Widget? icon,
    double? padding,
  }) : this._(
          text,
          loading,
          shadow,
          enabled,
          onPressed,
          radius: radius,
          CommonButtonType.outlined,
          backgroundColor: backgroundColor,
          textColor: textColor,
          key: key,
          icon: icon,
          padding: padding,
          borderColor: borderColor,
        );

  const CommonButton.elevated({
    required String text,
    bool loading = false,
    bool shadow = false,
    bool enabled = true,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? textColor,
    Widget? icon,
    double? radius,
    Key? key,
    double? padding,
    double? elevation,
    Widget? suffixIcon,
    Color? shadowColor,
  }) : this._(
          backgroundColor: backgroundColor,
          textColor: textColor,
          text,
          loading,
          shadow,
          enabled,
          onPressed,
          radius: radius,
          CommonButtonType.elevated,
          key: key,
          icon: icon,
          padding: padding,
          elevation: elevation,
          suffixIcon: suffixIcon,
          shadowColor: shadowColor,
        );

  const CommonButton.text({
    required String text,
    bool loading = false,
    bool shadow = false,
    bool enabled = true,
    VoidCallback? onPressed,
    double radius = 0,
    Key? key,
    double? padding,
    Widget? prefixIcon,
  }) : this._(
          text,
          loading,
          shadow,
          enabled,
          onPressed,
          radius: radius,
          CommonButtonType.text,
          key: key,
          padding: padding,
          prefixIcon: prefixIcon,
        );

  VoidCallback? _onPressed() {
    if (!enabled) return null;
    return () {
      if (loading) return;
      onPressed?.call();
    };
  }

  Widget _child(Color color) {
    return loading
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              strokeWidth: 3,
              backgroundColor: color,
            ),
          )
        : Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  visible: icon != null,
                  child: Row(
                    children: [
                      icon ?? SizedBox.shrink(),
                      const SizedBox(width: 12),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  child: Text(
                    text,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: color,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
                suffixIcon != null ? const SizedBox(width: 12) : const SizedBox.shrink(),
                suffixIcon ?? const SizedBox.shrink(),
              ],
            ),
          );
  }

  Widget _outlined(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,
          side: BorderSide(
            color: borderColor ?? AppColors.containerBorder,
          ),
          shape: radius == null
              ? StadiumBorder()
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius!),
                ),
        ),
        onPressed: _onPressed(),
        child: _child(textColor ?? AppColors.headline),
      ),
    );
  }

  Widget _elevated(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: shadow
          ? BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.2),
                  spreadRadius: 8,
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            )
          : null,
      child: ElevatedButton(
        onPressed: _onPressed(),
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 4,
          shadowColor: shadowColor ?? AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 12),
          ),
          backgroundColor: enabled ? backgroundColor ?? AppColors.primary : AppColors.disabled,
        ),
        child: _child(
          enabled ? textColor ?? AppColors.white : AppColors.primary,
        ),
      ),
    );
  }

  Widget _text(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      onPressed: _onPressed(),
      child: Row(
        children: [
          Text(
            text,
            maxLines: 1,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.headline,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 4),
          Visibility(visible: prefixIcon != null, child: prefixIcon!),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case CommonButtonType.outlined:
        return _outlined(context);
      case CommonButtonType.elevated:
        return _elevated(context);
      case CommonButtonType.text:
        return _text(context);
    }
  }
}

enum CommonButtonType { outlined, elevated, text }
