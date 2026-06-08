import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/boot.dart';
import 'core/databases/cache/cache_helper.dart';
import 'core/functions/auth_state_changes.dart';
import 'core/utils/constants/app_strings.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  // 1. Initialize Cache and Localization
  await getIt<CacheHelper>().init();
  await EasyLocalization.ensureInitialized();
  // 2. Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  authStateChanges();

  runApp(
    EasyLocalization(
      path: AppStrings.kTranslations,
      supportedLocales: [Locale('ar'), Locale('en')],
      child: DalelApp(),
    ),
  );
}
