import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/themes/app_colors.dart';

class AboutWidget extends StatelessWidget {
  final String image;
  final String descreption;
  const AboutWidget({
    super.key,
    required this.image,
    required this.descreption,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ReadMoreText(
            descreption,
            style: context.textTheme.titleSmall?.copyWith(
              color: AppColors.balck,
              fontWeight: FontWeight.w500,
            ),
            trimMode: TrimMode.Line,
            trimLines: 9,
            colorClickableText: AppColors.greyThree,
            trimCollapsedText: 'readMore'.tr(),
            trimExpandedText: 'readLess'.tr(),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(image, width: 160, height: 283, fit: .contain),
        ),
      ],
    );
  }
}
