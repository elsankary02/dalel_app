import '../../../core/utils/constants/app_svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

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
      onTap: () => Scaffold.of(context).openDrawer(),
      child: SvgPicture.asset(AppSvgs.drawer),
    );
  }
}
