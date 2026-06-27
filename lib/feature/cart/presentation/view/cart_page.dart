import '../../../../core/components/default_history_books.dart';
import '../../../../core/functions/default_appbar.dart';
import '../../../../core/functions/default_title.dart';
import '../../../../core/model/dalel_details_args.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../data/model/historical_souvenirs_model.dart';
import '../../data/model/history_books_model.dart';
import '../../../home/data/models/historical_periods_model.dart';
import '../../../home/data/models/wars_model.dart';
import '../../../home/presentation/widget/custom_historical_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widget/floating_action_button_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final periods = HistoricalPeriodsModel.historicalPeriodsItems(context);
    final books = HistoryBooksModel.historyBooksItems(context);
    final souvenirs = HistoricalSouvenirsModel.historicalSouvenirsItems(
      context,
    );
    return Scaffold(
      floatingActionButton: FloatingActionButtonWidget(),
      appBar: defaultAppBar(context, title: "bazar_title".tr()),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: context.h * 0.016),
        children: [
          // historical_periods
          defaultTitle(context, title: "historical_periods".tr()),
          CustomHistoricalWidget(
            items: periods,
            onTap: (index) {
              final wars = WarsModel.warsItems(context);
              context.pushNamed(
                RouteNames.dalelPeriodPage,
                extra: DalelDetailsArgs(data: periods[index], wars: wars),
              );
            },
          ),

          // history_books
          defaultTitle(context, top: 32, title: "history_books_two".tr()),
          DefalutHistoryBooks(
            items: books,
            onTap: (index) => context.pushNamed(
              RouteNames.dalelCharPage,
              extra: DalelDetailsArgs(data: books[index]),
            ),
          ),

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
    );
  }
}
