import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../constants/theme_constant.dart';
import '../../globals.dart';


class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  int index = 0;
  List<String> titleList = [
    "Discover Your New Home",
    "Discover Your New Home",
    "Discover Your New Home"
  ];
  List<String> descriptionList = [
    "Browse the highest quality listings, apply online, sign your lease, and even pay your rent from any device and find answers to all of your renting questions with the best renter’s guide",
    "Browse the highest quality listings, apply online, sign your lease, and even pay your rent from any device and find answers to all of your renting questions with the best renter’s guide",
    "Browse the highest quality listings, apply online, sign your lease, and even pay your rent from any device and find answers to all of your renting questions with the best renter’s guide",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/starting_image_${index + 1}.png",
                fit: BoxFit.fill,
                height: 1.sh,
                width: 1.sw,
              ),

                Container(
                  padding:  EdgeInsets.symmetric(horizontal: 33.r),
                  margin: EdgeInsets.only(bottom: 70.r),
                  child: Column(

                    children: [
                      Text(
                        titleList[index].tr(),
                        style: MyFonts.semiBoldFont.copyWith(fontSize: fontSize + 2.sp, color: Colors.white),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        descriptionList[index].tr(),
                        // textAlign: TextAlign.justify,
                        style: MyFonts.regularFont.copyWith(fontSize: fontSize - 3.sp, color: MyColors.greyTextColor,  letterSpacing: 0.2.sp,height: 1.3.h),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Skip".tr(),
                            style: MyFonts.boldFont.copyWith(
                                color: MyColors.greyTwentyColor
                            ),
                          ),
                          DotsIndicator(
                            dotsCount: 3,
                            position: index.toDouble(),
                            decorator: DotsDecorator(
                                color: MyColors.white,
                              activeColor: Theme.of(context).colorScheme.primary
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if(index<2) {
                                index++;
                                setState(() {});
                              }
                              else {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Container(),));
                              }
                            },
                            child: Text(
                              "Next".tr(),
                              style: MyFonts.boldFont.copyWith(
                                  color: Theme.of(context).colorScheme.primary
                              ),
                            ),
                          ),
                        ],
                      )
                      ,
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
