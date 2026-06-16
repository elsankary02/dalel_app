import '../../../core/components/defalut_history_books.dart';
import '../../../core/components/default_historical_category_card.dart';
import '../../../core/functions/default_title.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../widget/drawer_widget.dart';
import '../widget/home_appbar_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: context.h * 0.016),
          children: [
            SizedBox(height: context.h * 0.028),
            HomeAppBarWidget(),
            SizedBox(height: context.h * 0.032),
            defaultTitle(context, title: "historical_periods".tr()),
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
            defaultTitle(context, top: 32, title: "historical_characters".tr()),
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
            defaultTitle(context, top: 32, title: "ancient_wars".tr()),
          ],
        ),
      ),
    );
  }
}
