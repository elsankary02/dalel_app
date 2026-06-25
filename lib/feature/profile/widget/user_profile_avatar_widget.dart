import 'package:flutter/material.dart';

import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';

class UserProfileAvatarWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String assetName;
  const UserProfileAvatarWidget({
    super.key,

    required this.assetName,
    this.title,
    this.subTitle,
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
          title ?? "Mohamed",
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
