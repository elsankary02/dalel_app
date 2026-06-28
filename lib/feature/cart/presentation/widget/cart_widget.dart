import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/components/default_cart_widget.dart';
import '../../../../core/functions/default_appbar.dart';
import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/constants/app_svgs.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/themes/app_colors.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.h * 0.010,
          horizontal: context.h * 0.024,
        ),
        child: Column(
          children: [
            _buildAppBarCart(context),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => DefaultCartWidget(
                  title: 'Ancient Egypt Book',
                  size: '1',
                  price: 1,
                  imagePath: AppImages.dalel,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBarCart(BuildContext context) {
    return defaultAppBar(
      context,
      title: "My Cart",
      leading: _buildIconbtn(
        context,
        icon: Icons.arrow_back_ios_rounded,
        onPressed: () => context.pop(),
      ),
      actions: [SvgPicture.asset(AppSvgs.deleteIcon)],
    );
  }

  IconButton _buildIconbtn(
    BuildContext context, {
    required VoidCallback onPressed,
    required IconData? icon,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: AppColors.deepBrown),
    );
  }
}
