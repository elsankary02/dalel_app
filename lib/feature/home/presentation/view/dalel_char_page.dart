import '../../../../core/functions/default_appbar.dart';
import '../../../../core/utils/constants/app_svgs.dart';
import '../../../../core/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/default_history_books.dart';
import '../../../../core/functions/default_title.dart';
import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../widget/dalel_char_widget.dart';
import '../widget/historical_periods_widget.dart';

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
            _defaultAppBarFunc(context),
            SizedBox(height: context.h * 0.025),
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

  AppBar _defaultAppBarFunc(BuildContext context) {
    return defaultAppBar(
      context,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Icon(Icons.arrow_back_ios_rounded, color: AppColors.deepBrown),
      ),
      actions: [SvgPicture.asset(AppSvgs.dalelLogo)],
    );
  }
}
