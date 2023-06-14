import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/constants/theme_constant.dart';
import 'package:project_manger/globals.dart';
import 'package:project_manger/widgets/search_widget.dart';

import '../../widgets/custom_carousel_slider3.dart';
import 'widgets/overview_list.dart';
import 'widgets/see_more_project.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/logo_image.png",
                        width: 170.w,
                          fit: BoxFit.fill,
                          color: MyColors.white,
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm,
                            size: 20.sp,
                            ),
                            SizedBox(width: 10.w,),
                            Icon(Icons.notifications,
                            size: 20.sp,
                            ),
                            SizedBox(width: 10.w,),
                            Icon(Icons.person,
                            size: 20.sp,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.r),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("What do you like".tr(),
                            style: MyFonts.semiBoldFont.copyWith(
                                fontSize: fontSize + 6.sp
                            ),
                          ),
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: "to do, ",
                                style: MyFonts.semiBoldFont.copyWith(
                                    fontSize: fontSize + 6.sp,
                                ),
                              ),
                              TextSpan(
                                text: "Mohamed ?",
                                style: MyFonts.boldFont.copyWith(
                                    fontSize: fontSize + 7.sp
                                ),
                              ),
                            ]
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h,),
                  SearchWidget(itemType: "itemType", categoryType: "categoryType"),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pending Projects",
                          style: MyFonts.boldFont.copyWith(
                              fontSize: fontSize - 2.sp
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SeeMoreProject();
                            },));
                          },
                          child: Text("See all".tr(),
                            style: MyFonts.regularFont.copyWith(
                                fontSize: fontSize - 4.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.r),
                    child: CustomCarouselSlider3(
                      onPageChanged: (int , CarouselPageChangedReason ) {  },
                      currentIndex: 0,
                      imgList: ['','',],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  OverviewList(),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Latest Projects",
                          style: MyFonts.boldFont.copyWith(
                              fontSize: fontSize - 2.sp
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SeeMoreProject();
                            },));
                          },
                          child: Text("See all".tr(),
                            style: MyFonts.regularFont.copyWith(
                                fontSize: fontSize - 4.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.r),
                    child: CustomCarouselSlider3(
                      onPageChanged: (int , CarouselPageChangedReason ) {  },
                      currentIndex: 0,
                      imgList: ['','',],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  // Expanded(child: ProjectList())
                ],
              ),
              SizedBox(height: 80.h,),
            ],
          ),
        ),
      ],
    );
  }
}
