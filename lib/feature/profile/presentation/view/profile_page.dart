import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/default_appbar.dart';
import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/constants/app_svgs.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../auth/data/auth_cubit/auth_cubit.dart';
import '../../data/cubit/user_cubit.dart';
import '../widget/default_list_tile_profile_widget.dart';
import '../widget/log_out_widget.dart';
import '../widget/privacy_policy_widget.dart';
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
          BlocBuilder<UserCubit, GetUserDataState>(
            builder: (context, state) {
              if (state is GetUserDataLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if (state is GetUserDataFailuer) {
                return Center(child: Text(state.message));
              }
              if (state is GetUserDataSuccess) {
                return UserProfileAvatarWidget(
                  image: AppImages.logoApp,
                  name: "${state.user.firstName} ${state.user.lastName}",
                  email: state.user.email,
                );
              }
              {
                return SizedBox();
              }
            },
          ),

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
            onTap: () => showModalBottomSheet(
              context: context,
              builder: (context) => PrivacyPolicyWidget(),
            ),
          ),
          // log Out
          BlocProvider(create: (context) => AuthCubit(), child: LogOutWidget()),
        ],
      ),
    );
  }
}
