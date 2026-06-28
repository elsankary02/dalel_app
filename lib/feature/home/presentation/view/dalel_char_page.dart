import 'package:dalel_app/feature/home/presentation/widget/build_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/functions/default_title.dart';
import '../../../../core/model/data_model.dart';
import '../../../../core/utils/constants/app_svgs.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../widget/about_widget.dart';

class DalelCharPage extends StatelessWidget {
  final DataModel data;
  const DalelCharPage({super.key, required this.data});

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
            buildAppBar(context),
            SizedBox(height: context.h * 0.025),
            // About
            Stack(
              clipBehavior: .none,
              children: [
                PositionedDirectional(
                  end: 0,
                  child: SvgPicture.asset(AppSvgs.charDeatails1),
                ),
                defaultTitle(context, title: "${"about".tr()} ${data.name}"),
              ],
            ),
            SizedBox(height: context.h * 0.030),
            _aboutFunc(data: data),
          ],
        ),
      ),
    );
  }

  Stack _aboutFunc({required DataModel data}) {
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
          image: data.image,
          descreption: data.descreption.toString(),
        ),
      ],
    );
  }
}
