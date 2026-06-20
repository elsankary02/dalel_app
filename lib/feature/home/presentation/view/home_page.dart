import 'package:dalel_app/feature/home/presentation/widget/historical_periods_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/defalut_history_books.dart';
import '../../../../core/functions/default_title.dart';
import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../widget/carousel_slider_widget.dart';
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
          padding: EdgeInsets.symmetric(
            horizontal: context.h * 0.016,
            vertical: context.h * 0.020,
          ),
          children: [
            HomeAppBarWidget(),
            SizedBox(height: context.h * 0.025),
            defaultTitle(context, title: "historical_periods".tr()),
            HistoricalPeriodsWidget(),
            defaultTitle(context, top: 32, title: "historical_characters".tr()),
            DefalutHistoryBooks(
              title: "Test",
              assetName: AppImages.imagesFrame3,
            ),
            defaultTitle(context, top: 32, title: "ancient_wars".tr()),
            // Carousel Slider
            CarouselSliderWidget(),
            defaultTitle(context, top: 32, title: "historical_souvenirs".tr()),
            DefalutHistoryBooks(
              title: "Test",
              assetName: AppImages.imagesFrame3,
            ),
          ],
        ),
      ),
    );
  }
}
