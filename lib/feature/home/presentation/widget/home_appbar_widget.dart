import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/constants/app_svgs.dart';

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

  Widget _leadingFunc(BuildContext context) {
    return SvgPicture.asset(AppSvgs.drawer);
  }
}
