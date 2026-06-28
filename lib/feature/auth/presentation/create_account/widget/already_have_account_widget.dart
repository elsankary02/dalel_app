import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/route_names.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: .center,
      text: TextSpan(
        style: context.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.deepGrey,
        ),
        children: [_buildAlreadyHaveAccount(context), _buildSignIn(context)],
      ),
    );
  }

  TextSpan _buildAlreadyHaveAccount(BuildContext context) {
    return TextSpan(
      text: "already_have_account".tr(),
      style: context.textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.w400,
        color: AppColors.deepGrey,
      ),
    );
  }
}

TextSpan _buildSignIn(BuildContext context) {
  return TextSpan(
    text: "sign_in".tr(),
    style: context.textTheme.labelMedium?.copyWith(
      fontWeight: FontWeight.w400,
      color: AppColors.primaryColor,
    ),
    recognizer: TapGestureRecognizer()
      ..onTap = () {
        context.replaceNamed(RouteNames.loginPage);
      },
  );
}
