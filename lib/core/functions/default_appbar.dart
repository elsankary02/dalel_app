import 'package:flutter/material.dart';

import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';

AppBar defaultAppBar(
  BuildContext context, {
  String? title,
  List<Widget>? actions,
  Widget? leading,
}) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: true,
    titleSpacing: 0,
    leading: leading,
    actions: actions,
    title: Text(
      title ?? "",
      textAlign: TextAlign.center,
      style: context.textTheme.titleLarge?.copyWith(
        color: AppColors.deepBrown,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
