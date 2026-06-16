import '../../../core/functions/default_title.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/components/defalut_history_books.dart';
import '../../../core/components/default_historical_category_card.dart';
import '../../../core/functions/default_appbar.dart';
import '../../../core/utils/constants/app_images.dart';
import '../widget/floating_action_button_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButtonWidget(),
      appBar: defaultAppBar(context, title: "bazar_title".tr()),

      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          defaultTitle(context, title: "history_books_one".tr()),
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
          defaultTitle(context, top: 32, title: "history_books_two".tr()),
          SizedBox(
            height: 150,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: .horizontal,
              itemBuilder: (context, index) => DefalutHistoryBooks(
                title: 'Lionheart',
                assetName: AppImages.imagesFrame3,
              ),
            ),
          ),
          defaultTitle(context, top: 32, title: "historical_souvenirs".tr()),
          SizedBox(
            height: 150,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              scrollDirection: .horizontal,
              itemBuilder: (context, index) => DefalutHistoryBooks(
                title: 'Lionheart',
                assetName: AppImages.imagesFrame3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
