import '../../../core/utils/constants/app_images.dart';
import '../widget/log_out_widget.dart';
import '../widget/user_profile_avatar_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_svgs.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';
import '../widget/default_list_tile_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarProfile(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        children: [
          UserProfileAvatarWidget(assetName: AppImages.dalel),
          // Account
          Text(
            context.tr("account_section"),
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.greyTwo,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 24),
          // Edit Profile
          DefaultListTileProfileWidget(
            title: context.tr("edit_profile"),
            assetName: AppSvgs.editProfile,
          ),
          // Notification
          DefaultListTileProfileWidget(
            title: context.tr("notification"),
            assetName: AppSvgs.notification,
          ),
          SizedBox(height: 32),
          // General
          Text(
            context.tr("general_section"),
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.greyTwo,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 24),
          // Settings
          DefaultListTileProfileWidget(
            title: context.tr("settings"),
            assetName: AppSvgs.setting,
          ),
          // Security
          DefaultListTileProfileWidget(
            title: context.tr("security"),
            assetName: AppSvgs.lock,
          ),
          // Privacy Policy
          DefaultListTileProfileWidget(
            title: context.tr("privacy_policy"),
            assetName: AppSvgs.shieldDone,
          ),
          // log Out
          LogOutWidget(),
        ],
      ),
    );
  }

  AppBar appBarProfile(BuildContext context) {
    return AppBar(
      title: Text(
        context.tr("profile_title"),
        style: context.textTheme.titleLarge?.copyWith(
          color: AppColors.deepBrown,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
    );
  }
}
