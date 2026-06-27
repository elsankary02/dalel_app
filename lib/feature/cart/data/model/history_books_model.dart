import '../../../../core/model/data_model.dart';
import '../../../../core/utils/constants/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HistoryBooksModel extends DataModel {
  HistoryBooksModel({
    required super.name,
    required super.image,
    super.descreption,
  });
  static List<DataModel> historyBooksItems(BuildContext context) {
    return [
      HistoryBooksModel(
        name: 'odysseyTitle'.tr(),
        image: AppImages.historyBooks1,
        descreption: 'odysseyDes'.tr(),
      ),
      HistoryBooksModel(
        name: 'gilgameshTitle'.tr(),
        image: AppImages.historyBooks2,
        descreption: 'gilgameshDes'.tr(),
      ),
      HistoryBooksModel(
        name: 'republicTitle'.tr(),
        image: AppImages.historyBooks3,
        descreption: 'republicDes'.tr(),
      ),
      HistoryBooksModel(
        name: 'taoTeChingTitle'.tr(),
        image: AppImages.historyBooks4,
        descreption: 'taoTeChingDes'.tr(),
      ),
    ];
  }
}
