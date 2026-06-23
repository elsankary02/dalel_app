import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/constants/app_svgs.dart';

class HomeAppBarWidget extends StatelessWidget {
  final VoidCallback onTap;
  const HomeAppBarWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        _leadingFunc(context),
        SvgPicture.asset(AppSvgs.dalelLogo, height: 22, width: 53, fit: .cover),
      ],
    );
  }

  GestureDetector _leadingFunc(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(AppSvgs.drawer),
    );
  }
}
