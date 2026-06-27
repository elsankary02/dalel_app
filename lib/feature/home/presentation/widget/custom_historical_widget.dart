import '../../../../core/components/default_historical_category_card.dart';
import '../../../../core/model/data_model.dart';
import '../../../../core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CustomHistoricalWidget extends StatelessWidget {
  final List<DataModel> items;
  final Function(int index)? onTap;

  const CustomHistoricalWidget({super.key, required this.items, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final data = items[index];
          return Padding(
            padding: const EdgeInsetsDirectional.only(end: 20),
            child: DefaultHistoricalCategoryCard(
              onTap: () => onTap?.call(index),
              title: data.name,
              image: data.image,
            ),
          );
        },
      ),
    );
  }
}
