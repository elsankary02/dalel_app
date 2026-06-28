import 'package:flutter/material.dart';

import '../../../../core/utils/extensions/extensions.dart';
import '../../data/model/on_boardind_model.dart';
import 'list_generate_widget.dart';

class PageViewWidget extends StatefulWidget {
  final PageController? controller;
  final Function(int)? onPageChanged;
  final int currentIndex;

  const PageViewWidget({
    super.key,
    this.controller,
    this.onPageChanged,
    required this.currentIndex,
  });

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: widget.controller,
        onPageChanged: widget.onPageChanged,
        itemCount: onboardingItems(context).length,
        itemBuilder: (context, index) {
          final items = onboardingItems(context)[index];
          return _buildPageViewDetails(items, context);
        },
      ),
    );
  }

  Widget _buildPageViewDetails(OnBoardindModel items, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(items.image, height: 270, width: 278, fit: .cover),
          SizedBox(height: context.h * 0.034),
          ListGenerateWidget(currentIndex: widget.currentIndex),
          SizedBox(height: context.h * 0.034),
          Text(
            items.title,
            maxLines: 2,
            overflow: .ellipsis,
            textAlign: .center,
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: context.h * 0.016),
          Text(
            items.subTitle,
            maxLines: 2,
            overflow: .ellipsis,
            textAlign: .center,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
