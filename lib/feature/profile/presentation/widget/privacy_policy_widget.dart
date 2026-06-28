import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "privacy_policy_for_dalel".tr(),
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.deepBrown,
              ),
            ),

            SizedBox(height: context.h * 0.016),
            Text(
              "privacy_policy_full_text".tr(),
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.balck,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
