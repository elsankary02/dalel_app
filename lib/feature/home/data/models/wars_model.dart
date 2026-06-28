import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/model/data_model.dart';
import '../../../../core/utils/constants/app_images.dart';

class WarsModel extends DataModel {
  WarsModel({required super.name, required super.image, super.descreption});
  static List<DataModel> warsItems(BuildContext context) {
    return [
      WarsModel(
        name: 'hyksosInvasionTitle'.tr(),
        image: AppImages.ancientEgyptWars1,
        descreption: 'hyksosInvasionDes'.tr(),
      ),
      WarsModel(
        name: 'battleOfMegiddoTitle'.tr(),
        image: AppImages.ancientEgyptWars2,
        descreption: 'battleOfMegiddoDes'.tr(),
      ),
      WarsModel(
        name: 'battleOfJaffaTitle'.tr(),
        image: AppImages.saladinWars1,
        descreption: 'battleOfJaffaDes'.tr(),
      ),
      WarsModel(
        name: 'battleOfHattinTitle'.tr(),
        image: AppImages.saladinWars2,
        descreption: 'battleOfHattinDes'.tr(),
      ),
    ];
  }
}
