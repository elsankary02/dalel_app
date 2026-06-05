import 'package:flutter/material.dart';

import '../utils/themes/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? prefixText, suffixText;
  final bool obscureText, autofocus;
  final bool? filled;
  final double radius;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? labelStyle, suffixStyle, style, prefixStyle;
  final int? maxLength;
  final Widget? prefixIcon, suffixIcon;
  final TextEditingController? controller;
  final Function(String value)? onChanged, onFieldSubmitted;
  final String? Function(String? value)? validator;
  final Color? cursorColor, suffixIconColor, prefixIconColor, fillColor;
  final Color enabledBorderColor, focusedBorderColor;
  const CustomTextFormField({
    super.key,
    this.labelText = "enter your name",
    this.controller,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.autovalidateMode,
    this.labelStyle = const TextStyle(
      color: AppColors.deepGrey,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.onFieldSubmitted,
    this.maxLength,
    this.cursorColor,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.obscureText = false,
    this.filled,
    this.fillColor,
    this.autofocus = false,
    this.enabledBorderColor = AppColors.lightGrey,
    this.focusedBorderColor = AppColors.primaryColor,
    this.prefixText,
    this.suffixText,
    this.suffixStyle,
    this.prefixStyle,
    this.style = const TextStyle(
      color: AppColors.textColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    this.radius = 4,
    this.contentPadding = const EdgeInsetsDirectional.only(
      bottom: 20,
      top: 20,
      start: 16,
    ),
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      autovalidateMode: autovalidateMode,
      autofocus: autofocus,
      validator: validator,
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: cursorColor,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        filled: filled,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        prefixStyle: prefixStyle,
        prefixText: prefixText,
        suffixIcon: suffixIcon,
        prefixIconColor: prefixIconColor,
        suffixIconColor: suffixIconColor,
        suffixStyle: suffixStyle,
        suffixText: suffixText,
        labelText: labelText,
        labelStyle: labelStyle,
        enabledBorder: outlineInputBorder(
          color: enabledBorderColor,
          radius: radius,
        ),
        focusedBorder: outlineInputBorder(
          color: focusedBorderColor,

          radius: radius,
        ),
        focusedErrorBorder: outlineInputBorder(
          color: AppColors.error,
          radius: radius,
        ),
        errorBorder: outlineInputBorder(color: AppColors.error, radius: radius),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({
    required Color color,
    required double radius,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color),
    );
  }
}
