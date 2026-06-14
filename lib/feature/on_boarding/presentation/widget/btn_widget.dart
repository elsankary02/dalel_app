import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/boot.dart';
import '../../../../core/components/default_primary_btn.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/themes/app_colors.dart';
import '../../data/model/on_boardind_model.dart';

class BtnWidget extends StatefulWidget {
  final PageController controller;
  final int currentIndex;
  const BtnWidget({
    super.key,
    required this.controller,
    required this.currentIndex,
  });

  @override
  State<BtnWidget> createState() => _BtnWidgetState();
}

class _BtnWidgetState extends State<BtnWidget> {
  @override
  Widget build(BuildContext context) {
    final isSaved = getIt<CacheHelper>().saveData(key: "isSaved", value: true);
    return widget.currentIndex == onboardingFunc(context).length - 1
        ? Column(
            spacing: 16,
            children: [
              DefaultPrimaryBtn(
                padding: EdgeInsets.symmetric(vertical: context.h * 0.019),
                title: "create_account".tr(),
                textStyle: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
                onTap: () {
                  context.replaceNamed(RouteNames.signUpPage);
                  isSaved;
                },
              ),
              RichText(
                text: TextSpan(
                  text: "login_now".tr(),
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackBrown,
                    decoration: .underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.replaceNamed(RouteNames.loginPage);
                      isSaved;
                    },
                ),
              ),
            ],
          )
        : DefaultPrimaryBtn(
            padding: EdgeInsets.symmetric(vertical: context.h * 0.019),
            title: "next".tr(),
            textStyle: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
            onTap: () {
              widget.controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          );
  }
}
