import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class DefaultPrimaryBtn extends StatelessWidget {
  final String title;
  final BorderSide borderSide;
  final EdgeInsets margin, padding;
  final bool isLoading;
  final IconData? rightIcon, leftIcon;
  final MainAxisSize mainAxisSize;
  final TextAlign? textAlign;
  final double? width, height, elevation;
  final Color? circularColor;
  final Color? disabledBackgroundColor,
      disabledForegroundColor,
      backgroundColor,
      shadowColor;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;
  final void Function()? onTap;

  const DefaultPrimaryBtn({
    super.key,
    required this.title,
    this.margin = EdgeInsets.zero,
    this.textStyle,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 19),
    this.isLoading = false,
    this.borderSide = BorderSide.none,
    this.borderRadius,
    this.textAlign = TextAlign.center,
    this.circularColor = Colors.white,
    this.width,
    this.height,
    this.disabledBackgroundColor = AppColors.primaryColor,
    this.disabledForegroundColor = AppColors.primaryColor,
    this.elevation = 0,
    this.backgroundColor = AppColors.primaryColor,
    this.shadowColor,
    this.mainAxisSize = MainAxisSize.max,
    this.rightIcon,
    this.leftIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: isLoading ? null : onTap,
          style: ElevatedButton.styleFrom(
            disabledBackgroundColor: disabledBackgroundColor,
            disabledForegroundColor: disabledForegroundColor,
            elevation: elevation,
            shadowColor: shadowColor,
            padding: padding,
            side: borderSide,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: mainAxisSize,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoading
                  ? SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: circularColor,
                        strokeWidth: 1.5,
                      ),
                    )
                  : Row(
                      children: [
                        Text(title, textAlign: textAlign, style: textStyle),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
