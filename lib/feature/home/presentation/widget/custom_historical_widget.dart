import 'package:flutter/material.dart';

import '../../../../core/components/default_historical_category_card.dart';
import '../../../../core/utils/extensions/extensions.dart';

class CustomHistoricalWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final int? itemCount;
  final String title;
  final String image;
  const CustomHistoricalWidget({
    super.key,
    this.onTap,
    this.itemCount,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * 0.1,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: .horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(end: 20),
          child: DefaultHistoricalCategoryCard(
            onTap: onTap,
            title: title,
            image: image,
          ),
        ),
      ),
    );
  }
}
