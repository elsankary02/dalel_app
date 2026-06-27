import '../../../../core/model/data_model.dart';
import '../../../../core/utils/constants/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsModel extends DataModel {
  HistoricalPeriodsModel({
    required super.name,
    required super.image,
    super.descreption,
  });

  static List<DataModel> historicalPeriodsItems(BuildContext context) {
    return [
      HistoricalPeriodsModel(
        name: 'ancientEgyptTitle'.tr(),
        image: AppImages.historicalPeriods1,
        descreption: 'ancientEgyptDes'.tr(),
      ),
      HistoricalPeriodsModel(
        name: 'islamicEraTitle'.tr(),
        image: AppImages.historicalPeriods2,
        descreption: 'islamicEraDes'.tr(),
      ),
    ];
  }
}
