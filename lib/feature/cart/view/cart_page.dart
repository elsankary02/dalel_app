import 'package:dalel_app/core/router/route_names.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/components/default_history_books.dart';
import '../../../core/functions/default_appbar.dart';
import '../../../core/functions/default_title.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../../home/presentation/widget/custom_historical_widget.dart';
import '../widget/floating_action_button_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButtonWidget(),
      appBar: defaultAppBar(context, title: "bazar_title".tr()),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: context.h * 0.016),
        children: [
          defaultTitle(context, title: "history_books_one".tr()),
          // TODO
          CustomHistoricalWidget(
            onTap: () => context.pushNamed(RouteNames.dalelPeriodPage),
            title: 'test',
            image: AppImages.imagesFrame2,
          ),
          defaultTitle(context, top: 32, title: "history_books_two".tr()),
          DefalutHistoryBooks(
            title: "Test",
            assetName: AppImages.imagesFrame3,
            itemCount: 5,
          ),
          defaultTitle(context, top: 32, title: "historical_souvenirs".tr()),
          DefalutHistoryBooks(
            title: "Test",
            assetName: AppImages.imagesFrame3,
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
