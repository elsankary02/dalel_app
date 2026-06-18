import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';

class CheckboxAndTermsAndConditionWidget extends StatelessWidget {
  final Function(bool?)? onChanged;
  final bool isSelected;
  const CheckboxAndTermsAndConditionWidget({
    super.key,
    this.onChanged,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        // Checkbox
        SizedBox(
          height: context.h * 0.024,
          width: context.h * 0.024,
          child: Checkbox(
            value: isSelected,
            onChanged: onChanged,
            activeColor: AppColors.deepBrown,
            side: BorderSide(color: AppColors.deepGrey),
          ),
        ),
        RichText(
          text: TextSpan(
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.deepGrey,
            ),
            children: [
              TextSpan(text: "agree_terms_text".tr()),
              TextSpan(
                text: "terms_and_conditions".tr(),
                style: context.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.deepGrey,
                  decoration: .underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        padding: const EdgeInsets.all(16.0),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: .start,
                            mainAxisSize: .min,
                            children: [
                              Text(
                                "terms_and_conditions".tr(),
                                style: context.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.deepBrown,
                                ),
                              ),
                              SizedBox(height: context.h * 0.016),
                              Text(
                                "actual_terms_body_text".tr(),
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
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
