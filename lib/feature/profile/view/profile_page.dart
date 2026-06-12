import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/functions/show_snakbar_message.dart';
import '../../../core/router/route_names.dart';
import '../../../core/utils/constants/app_svgs.dart';
import '../../../core/utils/extensions/extensions.dart';
import '../../../core/utils/themes/app_colors.dart';
import '../../auth/data/auth_cubit/auth_cubit.dart';
import '../widget/appbar.dart';
import '../widget/default_list_tile_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          // TODO : Image and user name and password
          //? Account
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24),
            child: Text(
              context.tr("account_section"),
              style: context.textTheme.titleMedium?.copyWith(
                color: AppColors.greyTwo,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 24),
          //! Edit Profile
          DefaultListTileProfileWidget(
            title: context.tr("edit_profile"),
            assetName: AppSvgs.editProfile,
            onTap: () {},
          ),
          //! Notification
          DefaultListTileProfileWidget(
            title: context.tr("notification"),
            assetName: AppSvgs.notification,
            onTap: () {},
          ),
          SizedBox(height: 32),
          //? General
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24),
            child: Text(
              context.tr("general_section"),
              style: context.textTheme.titleMedium?.copyWith(
                color: AppColors.greyTwo,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 24),
          //! Settings
          DefaultListTileProfileWidget(
            title: context.tr("settings"),
            assetName: AppSvgs.setting,
            onTap: () {},
          ),
          //! Security
          DefaultListTileProfileWidget(
            title: context.tr("security"),
            assetName: AppSvgs.lock,
            onTap: () {},
          ),
          //! Privacy Policy
          DefaultListTileProfileWidget(
            title: context.tr("privacy_policy"),
            assetName: AppSvgs.shieldDone,
            onTap: () {},
          ),
          //! log Out
          BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is SignOutError) {
                showSnakBarMessage(
                  context,
                  isError: true,
                  message: tr("logout_failed"),
                );
                return;
              } else if (state is SignOutSuccess) {
                context.replaceNamed(RouteNames.loginPage);
                showSnakBarMessage(context, message: tr("logout_success"));
                return;
              }
            },
            builder: (context, state) {
              return DefaultListTileProfileWidget(
                title: context.tr("log_out"),
                assetName: AppSvgs.logOut,
                onTap: () async => await context.read<AuthCubit>().signOut(),
              );
            },
          ),
        ],
      ),
    );
  }
}
