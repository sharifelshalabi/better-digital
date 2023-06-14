
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../../../widgets/cached_image_widget.dart';


class PaymentGridView extends StatelessWidget {
   PaymentGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
      return InkWell(
        onTap: () {

        },
        child: Container(
          padding: EdgeInsets.all(12.r),
          width: 1.sw,
          margin:  EdgeInsets.symmetric(horizontal: 10.r,vertical: 10.r),
          decoration: BoxDecoration(
            color: isDark ? MyColors.blackOpacity : MyColors.white,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Better DigitalBetter DigitalBetter Digital",
                      maxLines: 1,
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 1.sp,
                          color: !isDark ? MyColors.blackTwoColor : MyColors.thirdContainerColor
                      ),
                    ),
                    SizedBox(height: 18.h,),
                    Text("${"Started at".tr()} 2023-04-17",
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 4.sp,
                          color: !isDark ? MyColors.greyElevenColor : MyColors.hintColor
                      ),
                    ),
                    SizedBox(height: 8.h,),
                  ],
                ),
              ),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 10.0,
                percent: index == 0 ?
                0.03 :
                index == 1 ?
                1:
                0.75,
                backgroundColor: MyColors.greyTwentyEightColor,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(index == 0 ?
                    "Waiting".tr():
                    index == 1 ?
                    "Completed".tr():
                    "In progress".tr(),
                      maxLines: 1,
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 3.sp,
                          color: !isDark ? MyColors.blackTwoColor : MyColors.hintColor
                      ),
                    ),
                    Text(index == 0 ?
                    "0%":
                    index == 1 ?
                    "100%":
                    "75%",
                      maxLines: 1,
                      style: MyFonts.mediumFont.copyWith(
                          fontSize: fontSize - 3.sp,
                          color: !isDark ? MyColors.blackTwoColor : MyColors.hintColor
                      ),
                    ),
                  ],
                ),
                progressColor: index == 0 ?
                MyColors.errorColor:
                index == 1 ?
                Colors.lightGreen:
                MyColors.orange,
              ),
            ],
          ),
        ),
      );
    },);
  }
}
