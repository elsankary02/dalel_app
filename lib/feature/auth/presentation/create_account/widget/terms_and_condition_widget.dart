import '../../../func/terms_and_conditions_func.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';

class TermsAndConditionWidget extends StatefulWidget {
  const TermsAndConditionWidget({super.key});

  @override
  State<TermsAndConditionWidget> createState() =>
      _TermsAndConditionWidgetState();
}

class _TermsAndConditionWidgetState extends State<TermsAndConditionWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        // Check box
        SizedBox(
          height: context.h * 0.024,
          width: context.h * 0.024,
          child: Checkbox(
            value: isSelected,
            onChanged: (value) {
              setState(() {
                isSelected = value!;
              });
            },
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
              TextSpan(text: context.tr("agree_terms_text")),
              TextSpan(
                text: context.tr("terms_and_conditions"),
                style: context.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.deepGrey,
                  decoration: .underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    termsAndConditionsFunc(context);
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
