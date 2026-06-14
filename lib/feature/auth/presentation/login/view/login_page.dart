import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/components/default_primary_btn.dart';
import '../../../../../core/components/default_text_form_field.dart';
import '../../../../../core/functions/show_snakbar_message.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';
import '../../../data/auth_cubit/auth_cubit.dart';
import '../widget/dont_have_account_widget.dart';
import '../widget/forgot_password_widget.dart';
import '../widget/top_login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailAddressController = TextEditingController();
  final _passWordController = TextEditingController();
  @override
  void dispose() {
    _emailAddressController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  void loginFunc() async {
    if (!_formKey.currentState!.validate()) return;
    await context.read<AuthCubit>().signInWithEmailAndPassword(
      emailAddress: _emailAddressController.text.trim(),
      password: _passWordController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LogInError) {
            showSnakBarMessage(isError: true, message: state.message, context);
            return;
          } else if (state is LogInSuccess) {
            if (FirebaseAuth.instance.currentUser?.emailVerified == true) {
              context.replaceNamed(RouteNames.homeNavigationPage);
              showSnakBarMessage(message: "login_successfully".tr(), context);
            } else {
              showSnakBarMessage(
                isError: true,
                message: "check_email_verification".tr(),
                context,
              );
            }
            return;
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                TopLoginWidget(),
                SizedBox(height: context.h * 0.032),
                Padding(
                  padding: EdgeInsets.only(
                    left: context.h * 0.016,
                    right: context.h * 0.016,
                    bottom: context.h * 0.016,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "welcomeback".tr(),
                        style: context.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: .center,
                      ),
                      SizedBox(height: context.h * 0.048),
                      DefaultTextFormField(
                        labelText: "email_address".tr(),
                        controller: _emailAddressController,
                        validator: (value) => value == null || value.isEmpty
                            ? "email_address_required".tr()
                            : null,
                      ),
                      SizedBox(height: context.h * 0.030),
                      DefaultTextFormField(
                        labelText: "password".tr(),
                        controller: _passWordController,
                        isPassword: true,
                        validator: (value) => value == null || value.isEmpty
                            ? "password_required".tr()
                            : null,
                      ),
                      SizedBox(height: 16),
                      ForgotPasswordWidget(),
                      SizedBox(height: context.h * 0.110),
                      DefaultPrimaryBtn(
                        title: "sign_in".tr(),
                        textStyle: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                        isLoading: state is LogInLoading,
                        onTap: () => loginFunc(),
                      ),
                      SizedBox(height: context.h * 0.016),
                      DontHaveAccountWidget(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
