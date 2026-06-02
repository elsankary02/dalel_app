import 'package:dalel_app/app/boot.dart';
import 'package:dalel_app/feature/auth/data/cubit/auth_cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../feature/auth/presentation/create_account/view/create_account_page.dart';
import '../../feature/auth/presentation/forget_password/view/forget_password_page.dart';
import '../../feature/auth/presentation/login/view/login_page.dart';
import '../../feature/on_boarding/presentation/view/on_boarding_page.dart';
import '../../feature/splash/splash_page.dart';
import 'route_names.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteNames.splashPage,
      name: RouteNames.splashPage,
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: RouteNames.onBoardingPage,
      name: RouteNames.onBoardingPage,
      builder: (context, state) => OnBoardingPage(),
    ),
    GoRoute(
      path: RouteNames.loginPage,
      name: RouteNames.loginPage,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: LoginPage(),
      ),
    ),
    GoRoute(
      path: RouteNames.signUpPage,
      name: RouteNames.signUpPage,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: SignUpPage(),
      ),
    ),
    GoRoute(
      path: RouteNames.forgetPasswordPage,
      name: RouteNames.forgetPasswordPage,
      builder: (context, state) => ForgetPasswordPage(),
    ),
  ],
);
