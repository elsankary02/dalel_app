import '../model/data_model.dart';
import 'package:flutter/material.dart';

import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';

class DefalutHistoryBooks extends StatelessWidget {
  final List<DataModel> items;
  final Function(int index)? onTap;
  const DefalutHistoryBooks({super.key, required this.items, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        itemCount: items.length,
        scrollDirection: .horizontal,
        itemBuilder: (context, index) {
          final data = items[index];
          return _historyBook(
            context,
            title: data.name,
            assetName: data.image,
            onTap: () => onTap?.call(index),
          );
        },
      ),
    );
  }

  GestureDetector _historyBook(
    BuildContext context, {
    required String title,
    required assetName,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 85,
        margin: const EdgeInsetsDirectional.only(end: 16, bottom: 5),
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: _boxShadow(),
        ),
        child: Column(
          spacing: 5,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(10),
                topEnd: Radius.circular(10),
              ),
              child: Image.asset(
                assetName,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100,
              ),
            ),
            Text(
              title,
              style: context.textTheme.labelSmall?.copyWith(
                color: AppColors.deepBrown,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
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
