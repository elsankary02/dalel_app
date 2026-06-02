import 'app/boot.dart';
import 'core/databases/cache/cache_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/utils/constants/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: AppStrings.kTranslations,
      supportedLocales: [Locale('ar'), Locale('en')],
      child: App(),
    ),
  );
}
