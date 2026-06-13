import 'package:flutter/material.dart';

import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';

class DefalutHistoryBooks extends StatelessWidget {
  final String title;
  final String assetName;
  final VoidCallback? onTap;

  const DefalutHistoryBooks({
    super.key,
    required this.title,
    required this.assetName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 74,
        margin: const EdgeInsetsDirectional.only(end: 16, bottom: 10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: _boxShadow(),
        ),
        child: Column(
          spacing: 5,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              assetName,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 100,
            ),
            Text(
              title,
              style: context.textTheme.labelSmall?.copyWith(
                color: AppColors.deepBrown,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
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
      offset: Offset(2, 4),
      color: AppColors.deepGrey.withAlpha(150),
      blurStyle: .outer,
    ),
  ];
}
