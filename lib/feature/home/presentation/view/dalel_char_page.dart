import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/default_history_books.dart';
import '../../../../core/functions/default_appbar.dart';
import '../../../../core/functions/default_title.dart';
import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/constants/app_svgs.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/themes/app_colors.dart';
import '../widget/about_widget.dart';
import '../widget/custom_historical_widget.dart';

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
            // About
            Stack(
              clipBehavior: .none,
              children: [
                PositionedDirectional(
                  end: 0,
                  child: SvgPicture.asset(AppSvgs.charDeatails1),
                ),
                defaultTitle(context, title: "About Saladin (1137-1193)"),
              ],
            ),
            SizedBox(height: context.h * 0.030),
            _aboutFunc(),
            SizedBox(height: context.h * 0.020),
            // Ancient Egypt Wars
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                defaultTitle(context, title: "Saladin Wars"),
                Row(
                  spacing: 7,
                  children: [
                    SvgPicture.asset(AppSvgs.charDeatails4),
                    SvgPicture.asset(AppSvgs.charDeatails3),
                  ],
                ),
              ],
            ),
            // TODO
            CustomHistoricalWidget(
              title: 'test',
              image: AppImages.historicalPeriods2,
            ),
            // Recommendations
            defaultTitle(context, top: 32, title: "Recommendations"),
            DefalutHistoryBooks(
              title: "Test",
              assetName: AppImages.historicalCharacters1,
            ),
          ],
        ),
      ),
    );
  }

  Stack _aboutFunc() {
    return Stack(
      clipBehavior: .none,
      children: [
        PositionedDirectional(
          top: 55,
          end: 0,
          child: SvgPicture.asset(AppSvgs.charDeatails2),
        ),
        PositionedDirectional(
          top: -20,
          start: 34,
          child: SvgPicture.asset(AppSvgs.charDeatails4),
        ),
        PositionedDirectional(
          top: -10,
          child: SvgPicture.asset(AppSvgs.charDeatails3),
        ),
        AboutWidget(
          image: AppImages.historicalCharacters3,
          descreption:
              'qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm',
        ),
      ],
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
