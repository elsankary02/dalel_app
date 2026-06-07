import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/custom_primary_btn.dart';
import '../../../../../core/components/custom_text_form_field.dart';
import '../../../../../core/utils/constants/app_images.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final emailAddressController = TextEditingController();
  @override
  void dispose() {
    emailAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.only(
              top: context.h * 0.064,
              left: context.h * 0.020,
              right: context.h * 0.020,
            ),
            children: [
              Text(
                context.tr("forgot_password_page"),
                textAlign: .center,
                style: context.textTheme.headlineSmall?.copyWith(
                  color: AppColors.blackBrown,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: context.h * 0.057),
              Image.asset(
                AppImages.imagesForgotPassword,
                height: context.h * 0.235,
                width: context.h * 0.235,
              ),
              SizedBox(height: context.h * 0.072),
              Text(
                context.tr(
                  "enter_your_registered_email_below_to_receive_password_reset_instruction",
                ),
                style: context.textTheme.titleSmall?.copyWith(
                  color: AppColors.deepGrey,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: .center,
                overflow: .ellipsis,
                maxLines: 2,
              ),
              SizedBox(height: context.h * 0.041),
              CustomTextFormField(
                labelText: context.tr("email_address"),
                controller: emailAddressController,
              ),
              SizedBox(height: context.h * 0.129),
              CustomPrimaryBtn(
                title: context.tr("send_verification_code"),
                textStyle: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
