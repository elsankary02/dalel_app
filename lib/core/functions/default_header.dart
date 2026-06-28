import 'package:flutter/material.dart';

import '../utils/constants/app_strings.dart';
import '../utils/extensions/extensions.dart';
import '../themes/app_colors.dart';

Padding defaultHeader(
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
