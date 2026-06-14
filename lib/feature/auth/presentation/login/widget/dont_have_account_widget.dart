import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/route_names.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: .center,
      text: TextSpan(
        style: context.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.deepGrey,
        ),
        children: [
          TextSpan(
            text: "dont_have_account".tr(),
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.deepGrey,
            ),
          ),
          TextSpan(
            text: "sign_up".tr(),
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.replaceNamed(RouteNames.signUpPage);
              },
          ),
        ],
      ),
    );
  }
}
