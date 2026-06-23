import '../../../../core/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/default_historical_category_card.dart';
import '../../../../core/utils/extensions/extensions.dart';

class HistoricalPeriodsWidget extends StatelessWidget {
  const HistoricalPeriodsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h * 0.1,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: .horizontal,
        itemCount: 2,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(end: 20),
          child: DefaultHistoricalCategoryCard(
            onTap: () => context.pushNamed(RouteNames.dalelChar),
          ),
        ),
      ),
    );
  }
}
