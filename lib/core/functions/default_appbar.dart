import 'package:flutter/material.dart';

import '../utils/extensions/extensions.dart';
import '../themes/app_colors.dart';

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
    scrolledUnderElevation: 0.0,
    leading: leading,
    actions: actions,
    actionsPadding: EdgeInsetsDirectional.only(end: 16),
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
