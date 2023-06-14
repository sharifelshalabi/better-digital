import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../../../widgets/custom_carousel_slider2.dart';
import '../../../widgets/text_form_field_widget.dart';

List<String> steps = [
  "Finished app design with logo",
  "Connect with api",
  "Upload to app store and google play",
  "Finished app design with logo",
  "Connect with api",
  "Upload to app store and google play",
];
List<String> date = [
  "2023-04-16",
  "2023-03-19",
  "2023-01-26",
  "2023-04-16",
  "2023-03-19",
  "2023-01-26",
];


class OverviewWidget extends StatelessWidget {
  TextEditingController feedbackEditingController;
  OverviewWidget({Key? key,required this.feedbackEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          // Center(
          //   child: CircularPercentIndicator(
          //     radius: 100.0,
          //     lineWidth: 10.0,
          //     percent: 0.75,
          //     backgroundColor: MyColors.greyTwentyEightColor,
          //     center: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text("In progress",
          //           maxLines: 1,
          //           style: MyFonts.mediumFont.copyWith(
          //               fontSize: fontSize - 2.sp,
          //               color: MyColors.blackTwoColor
          //           ),
          //         ),
          //         Text("75%",
          //           maxLines: 1,
          //           style: MyFonts.mediumFont.copyWith(
          //               fontSize: fontSize - 2.sp,
          //               color: MyColors.blackTwoColor
          //           ),
          //         ),
          //       ],
          //     ),
          //     progressColor: MyColors.orange,
          //   ),
          // ),
          CustomCarouselSlider2(
            onPageChanged: (p0, p1) {

            },
            currentIndex: 0,
            imgList: [
              "assets/images/example3.png",

            ],
          ),
          SizedBox(height: 50.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: Text("Better Digital",
              style: MyFonts.boldFont.copyWith(
                fontSize: fontSize ,
                color: !isDark ? MyColors.black : MyColors.white,
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: Row(
              children: [
                LinearPercentIndicator(
                  width: 340.w,
                  padding: EdgeInsets.zero,
                  backgroundColor: MyColors.oneBlueColor,
                  lineHeight: 15.h,
                  center: Text("50%",
                    style: MyFonts.regularFont.copyWith(
                        fontSize: fontSize - 4.sp
                    ),
                  ),
                  barRadius: Radius.circular(10.r),
                  isRTL: context.locale.languageCode == 'ar',
                  progressColor:Theme.of(context).colorScheme.primary,
                  percent: 0.5,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Started at".tr(),
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 3.sp,
                          color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                      ),
                    ),
                    Text("2023-04-17",
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 3.sp,
                          color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Deadline".tr(),
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 3.sp,
                          color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                      ),
                    ),
                    Text("2023-08-17",
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 3.sp,
                          color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Divider(color: MyColors.dividerColor,),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: Text("Project link".tr(),
              style: MyFonts.mediumFont.copyWith(
                  fontSize: fontSize - 1.sp,
                  color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: InkWell(
              onTap:() async{
                await launchUrl(Uri.parse('https://www.google.com'));
              },
              child: Text("https://www.google.com".tr(),
                style: MyFonts.mediumFont.copyWith(
                    decoration: TextDecoration.underline,
                    fontSize: fontSize - 1.sp,
                    color: Colors.blue
                ),
              ),
            ),
          ),
          SizedBox(height: 15.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: Text("Feedback".tr(),
              style: MyFonts.mediumFont.copyWith(
                  fontSize: fontSize - 1.sp,
                  color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: TextFormFieldWidget(
              textInputAction: TextInputAction.done,
              controller: feedbackEditingController,
              // focusNode: emailSignInNode,
              textInputType: TextInputType.name,
              textColor: !isDark ? MyColors.greyTwentyFiveColor : MyColors.thirdContainerColor,
              hintColor: !isDark ? MyColors.greyTwentyFiveColor : MyColors.thirdContainerColor,
              focusBorderColor: Theme.of(context).colorScheme.primary,
              hintText: "Add your feedback".tr(),
              enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
            ),
          ),
          SizedBox(height: 10.h,),
          Divider(color: MyColors.dividerColor,),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.r),
            child: Text("Previous Feedbacks".tr(),
              style: MyFonts.mediumFont.copyWith(
                  fontSize: fontSize - 1.sp,
                  color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 18.r),
            itemCount: steps.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.only(bottom: 20.r),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        "${index + 1}. ",
                        style: MyFonts.semiBoldFont.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: fontSize + 2.sp,
                        )
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              steps[index],
                              style: MyFonts.semiBoldFont.copyWith(
                                  fontSize: fontSize - 3.sp,
                                  color: !isDark ? MyColors.greyElevenColor : MyColors.thirdContainerColor
                              )
                          ),
                          SizedBox(height: 5.h,),
                          Text(
                              date[index],
                              style: MyFonts.regularFont.copyWith(
                                  fontSize: fontSize - 3.sp,
                                  color: MyColors.hintColor
                              )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },)
        ],
      ),
    );
  }
}
