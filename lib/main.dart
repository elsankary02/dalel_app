import 'package:dalel_app/app/app.dart';
import 'package:dalel_app/app/boot.dart';
import 'package:dalel_app/core/databases/cache/cache_helper.dart';
import 'package:dalel_app/core/utils/constants/app_strings.dart';
import 'package:dalel_app/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(
    EasyLocalization(
      path: AppStrings.kTranslations,
      supportedLocales: [Locale('ar'), Locale('en')],
      child: App(),
    ),
  );
}
