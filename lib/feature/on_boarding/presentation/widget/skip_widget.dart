import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/boot.dart';
import '../../../../core/databases/cache/cache_helper.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../data/model/on_boardind_model.dart';

class SkipWidget extends StatelessWidget {
  final int currentIndex;
  final PageController controller;
  const SkipWidget({
    super.key,
    required this.currentIndex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return currentIndex == onboardingFunc(context).length - 1
        ? SizedBox()
        : Align(
            alignment: .centerRight,
            child: RichText(
              text: TextSpan(
                text: "skip".tr(),
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    getIt<CacheHelper>().saveData(key: "isSaved", value: true);
                    context.replaceNamed(RouteNames.loginPage);
                  },
              ),
            ),
          );
  }
}
