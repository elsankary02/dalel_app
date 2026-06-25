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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: .start,
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
            trimCollapsedText: 'Read more?',
            trimExpandedText: ' Read less',
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(image, width: 160, height: 283, fit: .cover),
        ),
      ],
    );
  }
}
