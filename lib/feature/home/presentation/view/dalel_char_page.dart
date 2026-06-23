import '../../../../core/components/defalut_history_books.dart';
import '../../../../core/functions/default_title.dart';
import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../widget/dalel_char_widget.dart';
import '../widget/historical_periods_widget.dart';
import '../widget/home_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DalelCharPage extends StatelessWidget {
  const DalelCharPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: context.h * 0.016,
            vertical: context.h * 0.020,
          ),
          children: [
            HomeAppBarWidget(onTap: () => context.pop()),
            SizedBox(height: context.h * 0.026),
            defaultTitle(context, title: "About Ancient Egypt"),
            SizedBox(height: context.h * 0.030),
            DalelCharWidget(),
            SizedBox(height: context.h * 0.020),
            defaultTitle(context, title: "test"),
            HistoricalPeriodsWidget(),
            defaultTitle(context, top: 32, title: "test"),
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
