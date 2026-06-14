import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/functions/appbar.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/constants/app_svgs.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';
import '../widget/default_list_tile_profile_widget.dart';
import '../widget/log_out_widget.dart';
import '../widget/user_profile_avatar_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context, title: "profile_title".tr()),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        children: [
          UserProfileAvatarWidget(assetName: AppImages.dalel),
          // Account
          Text(
            "account_section".tr(),
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.greyTwo,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 24),
          // Edit Profile
          DefaultListTileProfileWidget(
            title: "edit_profile".tr(),
            assetName: AppSvgs.editProfile,
          ),
          // Notification
          DefaultListTileProfileWidget(
            title: "notification".tr(),
            assetName: AppSvgs.notification,
          ),
          SizedBox(height: 32),
          // General
          Text(
            "general_section".tr(),
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.greyTwo,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 24),
          // Settings
          DefaultListTileProfileWidget(
            title: "settings".tr(),
            assetName: AppSvgs.setting,
          ),
          // Security
          DefaultListTileProfileWidget(
            title: "security".tr(),
            assetName: AppSvgs.lock,
          ),
          // Privacy Policy
          DefaultListTileProfileWidget(
            title: "privacy_policy".tr(),
            assetName: AppSvgs.shieldDone,
          ),
          // log Out
          LogOutWidget(),
        ],
      ),
    );
  }
}
