import '../../../core/components/defalut_history_books.dart';
import '../../../core/components/default_historical_category_card.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';
import '../widget/floating_action_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButtonWidget(),
      appBar: appBarHome(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          text(context, title: "history_books_one".tr()),
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
          text(context, top: 32, title: "history_books_two".tr()),
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
          text(context, top: 32, title: "historical_souvenirs".tr()),
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

  Padding text(BuildContext context, {required String title, double top = 0}) =>
      Padding(
        padding: EdgeInsetsDirectional.only(top: top, bottom: 16),
        child: Text(
          title,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.deepBrown,
          ),
        ),
      );

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
