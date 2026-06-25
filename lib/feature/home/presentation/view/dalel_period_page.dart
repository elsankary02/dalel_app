import 'package:dalel_app/core/router/route_names.dart';
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

class DalelPeriodPage extends StatelessWidget {
  const DalelPeriodPage({super.key});

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
            Row(
              spacing: 7,
              children: [
                defaultTitle(context, title: "About Ancient Egypt"),
                Stack(children: [SvgPicture.asset(AppSvgs.periodDetails1)]),
              ],
            ),
            SizedBox(height: context.h * 0.030),
            Stack(
              clipBehavior: .none,
              children: [
                Positioned(
                  top: -23,
                  child: SvgPicture.asset(AppSvgs.periodDetails2),
                ),
                AboutWidget(
                  image: AppImages.imagesFrame,
                  descreption:
                      ' qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm qwertyuiopasdfghjklzxcvbnm',
                ),
              ],
            ),
            SizedBox(height: context.h * 0.020),
            // Ancient Egypt Wars
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                defaultTitle(context, title: "Ancient Egypt Wars"),
                SvgPicture.asset(AppSvgs.periodDetails3),
              ],
            ),
            // TODO
            CustomHistoricalWidget(
              onTap: () => context.pushNamed(RouteNames.dalelCharPage),
              title: 'test',
              image: AppImages.imagesFrame2,
            ),
            // Recommendations
            defaultTitle(context, top: 32, title: "Recommendations"),
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
