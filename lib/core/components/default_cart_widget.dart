import '../utils/extensions/extensions.dart';
import '../utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

class DefaultCartWidget extends StatefulWidget {
  const DefaultCartWidget({
    super.key,
    required this.title,
    required this.size,
    required this.price,
    required this.imagePath,
  });

  final String title;
  final String size;
  final double price;
  final String imagePath;

  @override
  State<DefaultCartWidget> createState() => _DefaultCartWidgetState();
}

class _DefaultCartWidgetState extends State<DefaultCartWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _checkBox(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                _leading(),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _title(context),
                      SizedBox(height: context.h * 0.006),
                      _subTitle(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _leading() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        widget.imagePath,
        height: 64,
        width: 64,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text(
      widget.title,
      style: context.textTheme.titleSmall?.copyWith(
        color: AppColors.deepBrown,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _subTitle(BuildContext context) {
    final h = context.h * 0.006;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: h),
        Text(
          "Size : ${widget.size}",
          style: context.textTheme.labelMedium?.copyWith(
            color: AppColors.greyThree,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${widget.price.toStringAsFixed(2)}',
              style: context.textTheme.titleSmall?.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              spacing: 14,
              mainAxisAlignment: .spaceBetween,
              children: [ 
                _circleDefault(
                  iconColor: AppColors.balck,
                  color: AppColors.grey300,
                  icon: Icons.minimize_sharp,
                ),
                Text("1"),
                _circleDefault(
                  iconColor: AppColors.white,
                  color: AppColors.grey,
                  icon: Icons.add,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _circleDefault({
    required Color color,
    required Color iconColor,
    required IconData? icon,
  }) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(shape: .circle, color: color),
      child: Center(child: Icon(icon, size: 8, color: iconColor)),
    );
  }

  Widget _checkBox() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 16),
      child: SizedBox(
        height: 20,
        width: 20,
        child: Checkbox(
          activeColor: AppColors.grey,
          side: BorderSide(color: AppColors.grey),
          value: _isSelected,
          onChanged: (value) {
            setState(() {
              _isSelected = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
