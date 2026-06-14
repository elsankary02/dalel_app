import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

AppBar defaultAppBar(BuildContext context, {required String title}) {
  return AppBar(
    title: Text(
      title,
      style: context.textTheme.titleLarge?.copyWith(
        color: AppColors.deepBrown,
        fontWeight: FontWeight.w700,
      ),
    ),
    centerTitle: true,
  );
}
