import 'package:easy_localization/easy_localization.dart';
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
import '../widget/already_have_account_widget.dart';
import '../widget/terms_and_condition_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailAddressController.dispose();
    passWordController.dispose();
    super.dispose();
  }

  void signUpFunc() async {
    if (!_formKey.currentState!.validate()) return;
    await context.read<AuthCubit>().createUserWithEmailAndPassword(
      emailAddress: emailAddressController.text.trim(),
      password: passWordController.text.trim(),
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
    );
  }

  bool _isCheckBoxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is CreatAccountError) {
            showSnakBarMessage(isError: true, message: state.message, context);
            return;
          } else if (state is CreatAccountSuccess) {
            showSnakBarMessage(
              message: "successfully_verify_and_login".tr(),
              context,
            );
            context.pushReplacementNamed(RouteNames.loginPage);
            return;
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsetsDirectional.only(
                top: context.h * 0.200,
                start: context.h * 0.024,
                end: context.h * 0.024,
                bottom: context.h * 0.016,
              ),
              children: [
                Text(
                  "welcome".tr(),
                  style: context.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: .center,
                ),
                SizedBox(height: context.h * 0.060),
                DefaultTextFormField(
                  labelText: "first_name".tr(),
                  validator: (value) => value == null || value.isEmpty
                      ? "first_name_required".tr()
                      : null,
                  controller: firstNameController,
                ),
                SizedBox(height: context.h * 0.030),
                DefaultTextFormField(
                  labelText: "last_name".tr(),
                  validator: (value) => value == null || value.isEmpty
                      ? "last_name_required".tr()
                      : null,
                  controller: lastNameController,
                ),
                SizedBox(height: context.h * 0.030),
                DefaultTextFormField(
                  labelText: "email_address".tr(),
                  validator: (value) => value == null || value.isEmpty
                      ? "email_address_required".tr()
                      : null,
                  controller: emailAddressController,
                ),
                SizedBox(height: context.h * 0.030),
                DefaultTextFormField(
                  labelText: "password".tr(),
                  validator: (value) => value == null || value.isEmpty
                      ? "password_required".tr()
                      : null,
                  controller: passWordController,
                  isPassword: true,
                ),
                SizedBox(height: context.h * 0.020),
                CheckboxAndTermsAndConditionWidget(
                  isSelected: _isCheckBoxSelected,
                  onChanged: (value) {
                    setState(() {
                      _isCheckBoxSelected = value ?? false;
                    });
                  },
                ),
                SizedBox(height: context.h * 0.120),
                DefaultPrimaryBtn(
                  disabledBackgroundColor: _isCheckBoxSelected
                      ? AppColors.primaryColor
                      : AppColors.grey,
                  title: "sign_up".tr(),
                  textStyle: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: _isCheckBoxSelected
                        ? AppColors.white
                        : AppColors.primaryColor,
                  ),
                  onTap: _isCheckBoxSelected ? () => signUpFunc() : null,
                  isLoading: state is CreatAccountLoading,
                ),
                SizedBox(height: context.h * 0.016),
                AlreadyHaveAccountWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
