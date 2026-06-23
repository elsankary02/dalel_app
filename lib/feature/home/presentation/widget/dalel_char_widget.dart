import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DalelCharWidget extends StatelessWidget {
  const DalelCharWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: .start,
      children: [
        Expanded(
          child: ReadMoreText(
            "Saladin was the founder of the Ayyubid dynasty and the first sultan of both Egypt and Syria. He is best known for his heroic defense of Islam against the Crusaders, especially his recapture of Jerusalem in 1187 Saladin was the founder of the Ayyubid dynasty and the first sultan of both Egypt and Syria. He is best known for his heroic defense of Islam against the Crusaders, especially his recapture of Jerusalem in 1187",
            style: context.textTheme.titleSmall?.copyWith(
              color: AppColors.balck,
              fontWeight: FontWeight.w500,
            ),
            trimMode: TrimMode.Line,
            trimLines: 12,
            colorClickableText: AppColors.greyThree,
            trimCollapsedText: 'Read more?',
            trimExpandedText: ' Read less',
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            AppImages.imagesFrame4,
            width: 160,
            height: 283,
            fit: .cover,
          ),
        ),
      ],
    );
  }
}
