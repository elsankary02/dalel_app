import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/components/defalut_history_books.dart';
import '../../../core/components/default_historical_category_card.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultHistoricalCategoryCard(
                title: 'ancient_egypt'.tr(),
                imageName: AppImages.imagesFrame,
              ),
              DefaultHistoricalCategoryCard(
                title: 'islamic_era'.tr(),
                imageName: AppImages.imagesFrame2,
              ),
            ],
          ),
          SizedBox(height: 60),
          SizedBox(
            height: 150,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: .horizontal,
              itemBuilder: (context, index) => DefalutHistoryBooks(
                title: 'go go the musiuem',
                assetName: AppImages.imagesFrame3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBarHome(BuildContext context) => AppBar(
    title: Text(
      "bazar_title".tr(),
      style: context.textTheme.titleLarge?.copyWith(
        color: AppColors.deepBrown,
        fontWeight: FontWeight.w700,
      ),
    ),
    centerTitle: true,
  );
}
