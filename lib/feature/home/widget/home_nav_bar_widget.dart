import 'package:dalel_app/core/utils/constants/app_svgs.dart';
import 'package:dalel_app/core/utils/themes/app_colors.dart';
import 'package:dalel_app/feature/cart/cart_page.dart';
import 'package:dalel_app/feature/home/view/home_page.dart';
import 'package:dalel_app/feature/profile/profile_page.dart';
import 'package:dalel_app/feature/search/search_page.dart';
import 'package:flutter/material.dart';
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

List<Widget> _buildScreens() {
  return [HomePage(), CartPage(), SearchPage(), ProfilePage()];
}

List<PersistentBottomNavBarItem> _items() {
  final h = 24.0;
  final w = 24.0;
  return [
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.homeIcon, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.homeIconActive, height: h, width: w),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.shoppingCart, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.shoppingCartActive, height: h, width: w),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.search, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.searchActive, height: h, width: w),
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(AppSvgs.profile, height: h, width: w),
      icon: SvgPicture.asset(AppSvgs.profileInactive, height: h, width: w),
    ),
  ];
}
