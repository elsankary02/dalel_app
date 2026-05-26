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
            text: context.tr("dont_have_account"),
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.deepGrey,
            ),
          ),
          TextSpan(
            text: context.tr("sign_up"),
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.lightGrey,
              decoration: .underline,
              decorationColor: AppColors.lightGrey,
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
