import 'package:flutter/material.dart';

import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/themes/app_colors.dart';

class UserProfileAvatarWidget extends StatelessWidget {
  final String name;
  final String email;
  final String image;
  const UserProfileAvatarWidget({
    super.key,

    required this.image,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 24),
      child: ListTile(
        contentPadding: .zero,
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.backgroundLight,
          backgroundImage: AssetImage(image),
        ),
        title: Text(
          name,
          style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.deepBrown,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          email,
          style: context.textTheme.titleMedium?.copyWith(
            color: AppColors.greyTwo,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
