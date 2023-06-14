import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/screens/projects/project_detail_page.dart';
import '../constants/theme_constant.dart';
import '../globals.dart';

import 'cached_image_widget.dart';

class CustomCarouselSlider3 extends StatelessWidget {
  Function(int, CarouselPageChangedReason)? onPageChanged;
  List<String> imgList;
  int currentIndex;
   CustomCarouselSlider3({Key? key,required this.onPageChanged,required this.imgList,required this.currentIndex}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Column(

      children: [
        CarouselSlider(
            items: imgList.map((e) => InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProjectDetailPage(),));
              },
              child: Container(
                width: 1.sw,
                // margin:  EdgeInsets.only(bottom: index + 1 == type.length ? 100.r : 15.r),
                padding:  EdgeInsets.symmetric(horizontal: 8.r,vertical: 15.r),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/card_background.png",
                  )),
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: MyColors.thirdLinearGradient,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Better Digital",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: MyFonts.semiBoldFont.copyWith(
                          color: MyColors.white,

                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Icon(Icons.date_range,
                        color: Colors.white,
                        size: 20.sp,
                        ),
                        SizedBox(width: 10.w,),
                        Text("${"Started: ".tr()} 2023-05-01",
                        style: MyFonts.regularFont.copyWith(
                          color: MyColors.white,
                          fontSize: fontSize - 2.sp
                        ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Icon(Icons.calendar_today,
                        color: Colors.white,
                        size: 20.sp,
                        ),
                        SizedBox(width: 10.w,),
                        Text("${"Deadline: ".tr()} 2023-07-01",
                        style: MyFonts.regularFont.copyWith(
                          color: MyColors.white,
                          fontSize: fontSize - 2.sp
                        ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.link_outlined,
                        color: Colors.white,
                        size: 20.sp,
                        ),
                        SizedBox(width: 10.w,),
                        Expanded(
                          child: Text("${"Link:".tr()} www.google.com",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: MyFonts.regularFont.copyWith(
                            color: MyColors.white,
                            fontSize: fontSize - 2.sp
                          ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )).toList(),
            options: CarouselOptions(
              height: 180.h,
              viewportFraction: 1,
              initialPage: 0,aspectRatio: 2,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // enlargeFactor: 0.3,
              onPageChanged: onPageChanged,
              scrollDirection: Axis.horizontal,
            )
        ),
        SizedBox(height: 10.h,),
        DotsIndicator(
        dotsCount: imgList.length,
        position: currentIndex.toDouble(),
          decorator: DotsDecorator(activeColor: MyColors.oneTrialColor),
        )
      ],
    );
  }
}
