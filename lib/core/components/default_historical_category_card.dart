import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

class DefaultHistoricalCategoryCard extends StatelessWidget {
  final String title;
  final String imageName;

  const DefaultHistoricalCategoryCard({
    super.key,
    required this.title,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: _boxShadow(),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        spacing: 16,
        mainAxisAlignment: .spaceBetween,
        children: [
          SizedBox(
            width: 90,
            child: Text(
              title,
              textAlign: .center,
              maxLines: 2,
              overflow: .ellipsis,
              style: context.textTheme.titleMedium?.copyWith(
                color: AppColors.deepBrown,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imageName, height: 64, width: 47, fit: .cover),
          ),
        ],
      ),
    );
  }

  List<BoxShadow>? _boxShadow() => [
    BoxShadow(
      blurRadius: 10,
      offset: Offset(2, 4),
      color: AppColors.deepGrey.withAlpha(80),
      blurStyle: .outer,
    ),
  ];
}
