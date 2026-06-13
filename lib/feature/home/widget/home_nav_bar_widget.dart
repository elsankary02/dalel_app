import '../../../core/utils/constants/app_svgs.dart';
import '../../../core/utils/themes/app_colors.dart';
import '../../auth/data/auth_cubit/auth_cubit.dart';
import '../../cart/view/cart_page.dart';
import '../view/home_page.dart';
import '../../profile/view/profile_page.dart';
import '../../search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

final _controller = PersistentTabController(initialIndex: 0);

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _items(),
      controller: _controller,
      backgroundColor: AppColors.primaryColor,
      navBarStyle: NavBarStyle.style6,
      decoration: NavBarDecoration(
        colorBehindNavBar: AppColors.offWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() => [
  HomePage(),
  CartPage(),
  SearchPage(),
  BlocProvider(create: (context) => AuthCubit(), child: ProfilePage()),
];

List<PersistentBottomNavBarItem> _items() {
  final h = 24.0;
  final w = 24.0;
  return [
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.home, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.homeInActive, height: h, width: w),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.cart, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.cartInActive, height: h, width: w),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.search, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.searchInActive, height: h, width: w),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.profile, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.profileInActive, height: h, width: w),
    ),
  ];
}
