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
    if (!mounted) return;

    final isUserVisited = getIt<CacheHelper>().getBool(key: "isSaved") ?? false;
    if (isUserVisited == true) {
      if (FirebaseAuth.instance.currentUser == null) {
        context.replaceNamed(RouteNames.signUpPage);
      } else {
        context.replaceNamed(RouteNames.homePage);
      }
    } else {
      context.replaceNamed(RouteNames.onBoardingPage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: Center(
        child: Column(
          crossAxisAlignment: .center,
          mainAxisAlignment: .center,
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
