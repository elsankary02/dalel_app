import '../../../core/components/defalut_history_books.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/components/default_historical_category_card.dart';
import '../../../core/functions/default_title.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../widget/drawer_widget.dart';
import '../widget/home_appbar_widget.dart';

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
            SizedBox(height: context.h * 0.020),
            HomeAppBarWidget(),
            SizedBox(height: context.h * 0.025),
            defaultTitle(context, title: "historical_periods".tr()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DefaultHistoricalCategoryCard(
                  title: 'ancient_egypt'.tr(),
                  imageName: AppImages.dalelLogin,
                ),
                DefaultHistoricalCategoryCard(
                  title: 'islamic_era'.tr(),
                  imageName: AppImages.dalelLogin,
                ),
              ],
            ),
            defaultTitle(context, top: 32, title: "historical_characters".tr()),
            DefalutHistoryBooks(
              title: "Test",
              assetName: AppImages.dalelLogin,
              itemCount: 5,
              onTap: () {},
            ),
            defaultTitle(context, top: 32, title: "ancient_wars".tr()),
            DefalutHistoryBooks(
              title: "Test",
              assetName: AppImages.dalelLogin,
              itemCount: 5,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
