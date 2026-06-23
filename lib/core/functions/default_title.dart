import '../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';

Padding defaultTitle(
  BuildContext context, {
  required String title,
  double top = 0,
}) => Padding(
  padding: EdgeInsetsDirectional.only(top: top, bottom: 16),
  child: Text(
    title,
    
    style: context.textTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.w400,
      color: AppColors.deepBrown,
      fontFamily: AppStrings.poppins,
    ),
  ),
);
