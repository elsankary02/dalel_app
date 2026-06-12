import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultListTileProfile extends StatelessWidget {
  final String title;
  final String assetName;
  final Function()? onTap;
  const DefaultListTileProfile({
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
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
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
