import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> termsAndConditionsFunc(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: .min,
          children: [
            Row(
              children: [
                Text(
                  context.tr("terms_and_conditions"),
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.deepBrown,
                  ),
                ),
              ],
            ),
            SizedBox(height: context.h * 0.016),
            Text(
              context.tr("actual_terms_body_text"),
              style: context.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.balck,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
