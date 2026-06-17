import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/app_images.dart';
import '../../../../../core/utils/constants/app_strings.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';

class TopLoginWidget extends StatelessWidget {
  const TopLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .center,
      children: [
        Image.asset(AppImages.imagesFrame3),
        Positioned(bottom: 0, left: 0, child: Image.asset(AppImages.vector1)),
        Positioned(bottom: 0, right: 0, child: Image.asset(AppImages.vector2)),
        Text(
          "Dalel",
          style: context.textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            fontFamily: AppStrings.pacifico,
          ),
        ),
      ],
    );
  }
}
