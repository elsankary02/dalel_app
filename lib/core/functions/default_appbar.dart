import 'package:flutter/material.dart';

import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';

AppBar defaultAppBar(BuildContext context, {required String title}) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: true,
    titleSpacing: 0,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: context.textTheme.titleLarge?.copyWith(
        color: AppColors.deepBrown,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
