import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/model/data_model.dart';
import '../../../../core/utils/constants/app_images.dart';

class HistoricalCharactersModel extends DataModel {
  HistoricalCharactersModel({
    required super.name,
    required super.image,
    super.descreption,
  });
  static List<DataModel> charactersItems(BuildContext context) {
    return [
      HistoricalCharactersModel(
        name: 'lionheartTitle'.tr(),
        image: AppImages.historicalCharacters1,
        descreption: 'lionheartDes'.tr(),
      ),
      HistoricalCharactersModel(
        name: 'napoleonTitle'.tr(),
        image: AppImages.historicalCharacters2,
        descreption: 'napoleonDes'.tr(),
      ),
      HistoricalCharactersModel(
        name: 'saladinTitle'.tr(),
        image: AppImages.historicalCharacters3,
        descreption: 'saladinDes'.tr(),
      ),
      HistoricalCharactersModel(
        name: 'qianlongTitle'.tr(),
        image: AppImages.historicalCharacters4,
        descreption: 'qianlongDes'.tr(),
      ),
    ];
  }
}
