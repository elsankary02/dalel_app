import '../../../../core/model/data_model.dart';
import '../../../../core/utils/constants/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsModel extends DataModel {
  HistoricalSouvenirsModel({
    required super.name,
    required super.image,
    super.descreption,
  });

  static List<DataModel> historicalSouvenirsItems(BuildContext context) {
    return [
      HistoricalSouvenirsModel(
        name: 'oldRingTitle'.tr(),
        image: AppImages.historicalSouvenirs1,
        descreption: 'oldRingDes'.tr(),
      ),
      HistoricalSouvenirsModel(
        name: 'miniStatueTitle'.tr(),
        image: AppImages.historicalSouvenirs2,
        descreption: 'miniStatueDes'.tr(),
      ),
      HistoricalSouvenirsModel(
        name: 'postersTitle'.tr(),
        image: AppImages.historicalSouvenirs3,
        descreption: 'postersDes'.tr(),
      ),
      HistoricalSouvenirsModel(
        name: 'oldMapsTitle'.tr(),
        image: AppImages.historicalSouvenirs4,
        descreption: 'oldMapsDes'.tr(),
      ),
    ];
  }
}
