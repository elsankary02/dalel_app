import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_names.dart';
import '../../../../core/utils/themes/app_colors.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: .circular(100),
      ),
      child: IconButton(
        onPressed: () => context.pushNamed(RouteNames.cartWidget),
        icon: Icon(Icons.shopping_cart, color: AppColors.white, size: 24),
      ),
    );
  }
}
