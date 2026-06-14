import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

class UserProfileAvatarWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String assetName;
  const UserProfileAvatarWidget({
    super.key,
    this.title,
    this.subTitle,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 24),
      child: ListTile(
        contentPadding: .zero,
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(assetName),
          onBackgroundImageError: (exception, stackTrace) {},
        ),
        title: Text(
          title ?? "Mohamed Ibrahim",
          style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.deepBrown,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subTitle ?? "elsankry02@gmail.com",
          style: context.textTheme.titleMedium?.copyWith(
            color: AppColors.greyTwo,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
