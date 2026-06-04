import '../feature/auth/data/cubit/auth_cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

import '../core/databases/cache/cache_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
