import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/functions/show_snakbar_message.dart';
import '../../../core/router/route_names.dart';
import '../../../core/utils/constants/app_svgs.dart';
import '../../auth/data/auth_cubit/auth_cubit.dart';
import 'default_list_tile_profile_widget.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
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
          showSnakBarMessage(context, message: "logout_success".tr());
          return;
        }
      },
      builder: (context, state) {
        return DefaultListTileProfileWidget(
          title: "log_out".tr(),
          assetName: AppSvgs.logOut,
          onTap: () async => await context.read<AuthCubit>().signOut(),
        );
      },
    );
  }
}
