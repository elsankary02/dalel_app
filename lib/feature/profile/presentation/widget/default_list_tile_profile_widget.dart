import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/utils/themes/app_colors.dart';

class DefaultListTileProfileWidget extends StatelessWidget {
  final String title;
  final String assetName;
  final Function()? onTap;
  const DefaultListTileProfileWidget({
    super.key,
    required this.title,
    required this.assetName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = AppColors.deepBrown;
    final h = 24.0;
    final w = 24.0;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      shape: Border(bottom: BorderSide(color: AppColors.borderSideGrey)),
      leading: SvgPicture.asset(
        assetName,
        height: h,
        width: w,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
      title: Text(
        title,
        style: context.textTheme.titleMedium?.copyWith(color: color),
      ),
      trailing: Directionality(
        textDirection: Directionality.of(context),
        child: Icon(Icons.arrow_forward_ios, color: color, size: h),
      ),
      onTap: onTap,
    );
  }
}
