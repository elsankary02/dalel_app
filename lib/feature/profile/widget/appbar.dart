import 'package:dalel_app/core/utils/constants/app_strings.dart';
import 'package:dalel_app/core/utils/extensions/extensions.dart';
import 'package:dalel_app/core/utils/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    title: Text(
      context.tr("profile_title"),
      style: context.textTheme.titleLarge?.copyWith(
        color: AppColors.deepBrown,
        fontWeight: FontWeight.w700,
        fontFamily: AppStrings.pacifico,
      ),
    ),
    centerTitle: true,
  );
}
