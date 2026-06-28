import 'package:flutter/material.dart';

import '../../../../core/utils/themes/app_colors.dart';
import '../../data/model/on_boardind_model.dart';

class ListGenerateWidget extends StatelessWidget {
  const ListGenerateWidget({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        ...List.generate(onboardingItems(context).length, (index) {
          return Container(
            margin: EdgeInsetsDirectional.only(start: 5),
            height: 6,
            width: currentIndex == index ? 25 : 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: currentIndex == index
                  ? AppColors.deepBrown
                  : AppColors.genColor,
            ),
          );
        }),
      ],
    );
  }
}
