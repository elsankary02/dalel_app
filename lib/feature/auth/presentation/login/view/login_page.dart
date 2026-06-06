import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/custom_primary_btn.dart';
import '../../../../../core/components/custom_text_form_field.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            TopLoginWidget(),
            SizedBox(height: context.h * 0.032),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    context.tr("welcomeback"),
                    style: context.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: .center,
                  ),
                  SizedBox(height: context.h * 0.048),
                  CustomTextFormField(
                    labelText: context.tr("email_address"),
                    controller: _emailAddressController,
                  ),
                  SizedBox(height: context.h * 0.030),
                  CustomTextFormField(
                    labelText: context.tr("password"),
                    controller: _passWordController,
                    isPassword: true,
                  ),
                  SizedBox(height: 16),
                  ForgotPasswordWidget(),
                  SizedBox(height: context.h * 0.110),
                  CustomPrimaryBtn(
                    title: context.tr("sign_in"),
                    textStyle: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: context.h * 0.016),
                  DontHaveAccountWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
