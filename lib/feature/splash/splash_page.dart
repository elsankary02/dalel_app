import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/boot.dart';
import '../../core/databases/cache/cache_helper.dart';
import '../../core/router/route_names.dart';
import '../../core/utils/constants/app_strings.dart';
import '../../core/utils/extensions/extensions.dart';
import '../../core/utils/themes/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _navigateDelayed();
    super.initState();
  }

  void _navigateDelayed() async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (mounted == false) return;
    final isUserVisitedOnBoarding =
        getIt<CacheHelper>().getBool(key: "isSaved") ?? false;
    final user = FirebaseAuth.instance.currentUser;

    if (isUserVisitedOnBoarding == false) {
      context.replaceNamed(RouteNames.onBoardingPage);
      return;
    }
    if (user != null) {
      if (user.emailVerified == true) {
        context.replaceNamed(RouteNames.homeNavigationPage);
      } else {
        context.replaceNamed(RouteNames.loginPage);
      }
    } else {
      context.replaceNamed(RouteNames.loginPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dalel",
              style: context.textTheme.displayLarge?.copyWith(
                color: AppColors.deepBrown,
                fontFamily: AppStrings.pacifico,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
