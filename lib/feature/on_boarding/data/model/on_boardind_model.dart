import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_images.dart';

class OnBoardindModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardindModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardindModel> onboardingFunc(BuildContext context) {
  return [
    OnBoardindModel(
      image: AppImages.imagesOnBoarding1,
      title: "explore_history_slogan".tr(),
      subTitle: "app_history_libraries".tr(),
    ),
    OnBoardindModel(
      image: AppImages.imagesOnBoarding2,
      title: "from_every_place".tr(),
      subTitle: "ancient_places_variety".tr(),
    ),
    OnBoardindModel(
      image: AppImages.imagesOnBoarding3,
      title: "ai_user_experience".tr(),
      subTitle: "ai_recommendations".tr(),
    ),
  ];
}
