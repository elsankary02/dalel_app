import '../utils/constants/app_images.dart';
import 'package:flutter/material.dart';

import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';

class DefaultHistoricalCategoryCard extends StatelessWidget {
  final VoidCallback? onTap;
  const DefaultHistoricalCategoryCard({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: _boxShadow(),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 90,
              child: Text(
                "test",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.deepBrown,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                AppImages.imagesFrame,
                width: 47,
                height: 64,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<BoxShadow>? _boxShadow() => [
    BoxShadow(
      blurRadius: 10,
      spreadRadius: -4,
      offset: const Offset(2, 4),
      color: AppColors.deepGrey.withAlpha(150),
      blurStyle: BlurStyle.outer,
    ),
  ];
}
