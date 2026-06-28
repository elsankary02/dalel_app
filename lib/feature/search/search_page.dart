import '../../core/components/default_text_form_field.dart';
import '../../core/functions/default_appbar.dart';
import '../../core/utils/extensions/extensions.dart';
import '../../core/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = AppColors.white;
    final style = context.textTheme.titleSmall?.copyWith(
      color: color,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: defaultAppBar(context, title: "search".tr()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            DefaultTextFormField(
              style: style,
              contentPadding: EdgeInsets.all(16),
              radius: 8,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: Icon(Icons.search, color: color, size: 24),
              ),
              hintText: "search_deep_history".tr(),
              hintStyle: style,
              cursorColor: color,
              enabledBorderColor: Colors.transparent,
              fillColor: AppColors.primaryColor,
              filled: true,
            ),
          ],
        ),
      ),
    );
  }
}
