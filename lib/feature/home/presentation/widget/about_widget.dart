import 'package:dalel_app/core/utils/extensions/extensions.dart';
import 'package:dalel_app/core/utils/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
      children: [_buildReadMore(context), _buildImage()],
    );
  }

  Widget _buildReadMore(BuildContext context) {
    return Expanded(
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
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(image, width: 160, height: 283, fit: .fill),
    );
  }
}
