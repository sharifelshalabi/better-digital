import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cached_image_widget.dart';

class CustomCarouselSlider extends StatelessWidget {
  Function(int, CarouselPageChangedReason)? onPageChanged;
  List<String> imgList;
  int currentIndex;
   CustomCarouselSlider({Key? key,required this.onPageChanged,required this.imgList,required this.currentIndex}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
            items: imgList.map((e) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset("assets/images/banner.png")
                    // CachedImageWidget(image: e,size: 160.h,)
                ))).toList(),
            options: CarouselOptions(
              height: 160.h,
              viewportFraction: 1,
              initialPage: 0,aspectRatio: 2,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // enlargeFactor: 0.3,
              onPageChanged: onPageChanged,
              scrollDirection: Axis.horizontal,
            )
        ),
        DotsIndicator(
        dotsCount: imgList.length,
        position: currentIndex.toDouble(),
          decorator: DotsDecorator(activeColor: Theme.of(context).colorScheme.primary),
        )
      ],
    );
  }
}
