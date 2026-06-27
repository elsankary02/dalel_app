import '../model/dalel_details_args.dart';
import '../../feature/home/presentation/view/dalel_period_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../feature/auth/data/auth_cubit/auth_cubit.dart';
import '../../feature/auth/presentation/create_account/view/create_account_page.dart';
import '../../feature/auth/presentation/forget_password/forget_password_page.dart';
import '../../feature/auth/presentation/login/view/login_page.dart';
import '../../feature/cart/presentation/widget/cart_widget.dart';
import '../../feature/home/presentation/view/dalel_char_page.dart';
import '../../feature/home/presentation/widget/home_nav_bar_widget.dart';
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
      builder: (context, state) =>
          BlocProvider(create: (context) => AuthCubit(), child: LoginPage()),
    ),
    GoRoute(
      path: RouteNames.signUpPage,
      name: RouteNames.signUpPage,
      builder: (context, state) =>
          BlocProvider(create: (context) => AuthCubit(), child: SignUpPage()),
    ),
    GoRoute(
      path: RouteNames.forgetPasswordPage,
      name: RouteNames.forgetPasswordPage,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: ForgetPasswordPage(),
      ),
    ),
    GoRoute(
      path: RouteNames.homeNavigationPage,
      name: RouteNames.homeNavigationPage,
      builder: (context, state) => HomeNavBarWidget(),
    ),
    GoRoute(
      path: RouteNames.cartWidget,
      name: RouteNames.cartWidget,
      builder: (context, state) => CartWidget(),
    ),
    GoRoute(
      path: RouteNames.dalelCharPage,
      name: RouteNames.dalelCharPage,
      builder: (context, state) {
        final args = state.extra as DalelDetailsArgs;
        return DalelCharPage(data: args.data);
      },
    ),
    GoRoute(
      path: RouteNames.dalelPeriodPage,
      name: RouteNames.dalelPeriodPage,
      builder: (context, state) {
        final args = state.extra as DalelDetailsArgs;
        return DalelPeriodPage(data: args.data, wars: args.wars!);
      },
    ),
  ],
);
