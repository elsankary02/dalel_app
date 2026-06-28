import 'package:dalel_app/core/components/default_history_books.dart';
import 'package:dalel_app/core/functions/default_appbar.dart';
import 'package:dalel_app/core/utils/themes/app_colors.dart';
import 'package:dalel_app/feature/home/data/models/historical_characters_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/default_header.dart';
import '../../../../core/model/dalel_details_args.dart';
import '../../../../core/model/data_model.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/constants/app_svgs.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../widget/about_widget.dart';
import '../widget/custom_historical_widget.dart';

class DalelPeriodPage extends StatelessWidget {
  final DataModel data;
  final List<DataModel> wars;
  const DalelPeriodPage({super.key, required this.data, required this.wars});

  @override
  Widget build(BuildContext context) {
    final characters = HistoricalCharactersModel.charactersItems(context);
    return Scaffold(
      appBar: defaultAppBar(
        context,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios_rounded, color: AppColors.deepBrown),
        ),
        actions: [SvgPicture.asset(AppSvgs.dalelLogo)],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: context.h * 0.016,
          vertical: context.h * 0.020,
        ),
        children: [
          SizedBox(height: context.h * 0.025),

          // About
          Row(
            spacing: 7,
            children: [
              defaultHeader(context, title: "${"about".tr()} ${data.name}"),
              Stack(children: [SvgPicture.asset(AppSvgs.periodDetails1)]),
            ],
          ),
          SizedBox(height: context.h * 0.030),

          // About Widget
          _buildSvgAndAboutWidget(),
          SizedBox(height: context.h * 0.020),

          // Ancient Egypt Wars
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              defaultHeader(context, title: 'wars'.tr()),
              SvgPicture.asset(AppSvgs.periodDetails3),
            ],
          ),
          CustomHistoricalWidget(
            items: wars,
            onTap: (index) => context.pushNamed(
              RouteNames.dalelCharPage,
              extra: DalelDetailsArgs(data: wars[index]),
            ),
          ),
          SizedBox(height: context.h * 0.020),

          // historical_characters
          defaultHeader(context, top: 32, title: "recommendations".tr()),
          DefalutHistoryBooks(
            items: characters,
            onTap: (index) => context.pushNamed(
              RouteNames.dalelCharPage,
              extra: DalelDetailsArgs(data: characters[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSvgAndAboutWidget() {
    return Stack(
      clipBehavior: .none,
      children: [
        Positioned(top: -23, child: SvgPicture.asset(AppSvgs.periodDetails2)),
        AboutWidget(
          image: data.image,
          descreption: data.descreption.toString(),
        ),
      ],
    );
  }
}
