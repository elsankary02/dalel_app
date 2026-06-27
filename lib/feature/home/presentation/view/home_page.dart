import '../../../../core/model/dalel_details_args.dart';
import '../../../../core/router/route_names.dart';
import '../../../cart/data/model/historical_souvenirs_model.dart';
import '../../data/models/historical_characters_model.dart';
import '../../data/models/historical_periods_model.dart';
import '../../data/models/wars_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/default_history_books.dart';
import '../../../../core/functions/default_title.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../widget/carousel_slider_widget.dart';
import '../widget/custom_historical_widget.dart';
import '../widget/drawer_widget.dart';
import '../widget/home_appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final periods = HistoricalPeriodsModel.historicalPeriodsItems(context);
    final characters = HistoricalCharactersModel.historicalCharactersItems(
      context,
    );
    final souvenirs = HistoricalSouvenirsModel.historicalSouvenirsItems(
      context,
    );
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

            // historical_periods
            defaultTitle(context, title: "historical_periods".tr()),
            CustomHistoricalWidget(
              items: periods,
              onTap: (index) {
                final wars = WarsModel.warsItems(context);
                final data = periods[index];
                context.pushNamed(
                  RouteNames.dalelPeriodPage,
                  extra: DalelDetailsArgs(data: data, wars: wars),
                );
              },
            ),

            // historical_characters
            defaultTitle(context, top: 32, title: "historical_characters".tr()),
            DefalutHistoryBooks(
              items: characters,
              onTap: (index) => context.pushNamed(
                RouteNames.dalelCharPage,
                extra: DalelDetailsArgs(data: characters[index]),
              ),
            ),

            // ancient_wars
            defaultTitle(context, top: 32, title: "ancient_wars".tr()),
            CarouselSliderWidget(),

            // historical_souvenirs
            defaultTitle(context, top: 32, title: "historical_souvenirs".tr()),
            DefalutHistoryBooks(
              items: souvenirs,
              onTap: (index) => context.pushNamed(
                RouteNames.dalelCharPage,
                extra: DalelDetailsArgs(data: souvenirs[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
