import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';


class ProposalsList extends StatelessWidget {
  const ProposalsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 8,
      itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.r,vertical: 14.r),
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          color: isDark ? MyColors.blackOpacity : MyColors.white,
          borderRadius: BorderRadius.circular(14.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20.r,vertical: 5.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("Packaging Design",
                    style: MyFonts.semiBoldFont.copyWith(
                        color: MyColors.white
                    ),
                  ),
                ),
                Icon(Icons.download_sharp,
                  size: 20.sp,
                  color: Theme.of(context).colorScheme.primary,
                )
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Date",
                      style: MyFonts.mediumFont.copyWith(
                          color: MyColors.whiteTwoColor,
                          fontSize: fontSize - 1.sp
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Text("01-01-2022",
                      style: MyFonts.regularFont.copyWith(
                          color: MyColors.hintColor,
                          fontSize: fontSize - 2.sp
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Valid until",
                      style: MyFonts.mediumFont.copyWith(
                          color: MyColors.whiteTwoColor,
                          fontSize: fontSize - 1.sp
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Text("01-01-2022",
                      style: MyFonts.regularFont.copyWith(
                          color: MyColors.hintColor,
                          fontSize: fontSize - 2.sp
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                    width: ScreenUtil().screenWidth,
                    decoration: BoxDecoration(
                      color: isDark ? MyColors.blackOpacity : MyColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 8.r),
                    child: Text("120000\$",
                      textAlign: TextAlign.center,
                      style: MyFonts.regularFont.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: fontSize - 4.sp
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                    width: ScreenUtil().screenWidth,
                    decoration: BoxDecoration(
                      color: isDark ? MyColors.blackOpacity : MyColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 8.r),
                    child: Text("Overdue",
                      textAlign: TextAlign.center,
                      style: MyFonts.regularFont.copyWith(
                          color: MyColors.orange,
                          fontSize: fontSize - 4.sp
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },);
  }
}
