import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_names.dart';
import '../../../../core/utils/constants/app_images.dart';
import '../../../../core/utils/themes/app_colors.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            clipBehavior: .none,

            aspectRatio: 376 / 169,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
          items: _buildCarouselItems(),
        ),
        _buildDotsIndicator(),
      ],
    );
  }

  Widget _buildDotsIndicator() {
    return PositionedDirectional(
      start: 0,
      end: 0,
      bottom: 8,
      child: Row(
        mainAxisAlignment: .center,
        children: [
          ...List.generate(
            _buildCarouselItems().length,
            (index) => Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? AppColors.dotColor
                    : AppColors.dotGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildCarouselItems() => [
    _carouselImage(image: AppImages.sliderOne),
    _carouselImage(image: AppImages.sliderTwo),
    _carouselImage(image: AppImages.sliderThree),
  ];

  Widget _carouselImage({required String image}) {
    return GestureDetector(
      onTap: () => context.pushNamed(RouteNames.dalelPeriodPage),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(image, fit: BoxFit.cover, height: 169, width: 376),
      ),
    );
  }
}
