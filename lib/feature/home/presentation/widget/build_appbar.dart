import 'package:dalel_app/core/functions/default_appbar.dart';
import 'package:dalel_app/core/utils/constants/app_svgs.dart';
import 'package:dalel_app/core/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

Widget buildAppBar(BuildContext context) {
  return defaultAppBar(
    context,
    leading: IconButton(
      onPressed: () => context.pop(),
      icon: Icon(Icons.arrow_back_ios_rounded, color: AppColors.deepBrown),
    ),
    actions: [SvgPicture.asset(AppSvgs.dalelLogo)],
  );
}
