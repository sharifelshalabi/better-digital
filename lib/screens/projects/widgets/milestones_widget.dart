import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

List<String> milestones = [
  "Testing",
  "Planning",
  "Development",
  "Design",
  "Uncategorized",
];

class MilestonesWidget extends StatelessWidget {
  const MilestonesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: milestones.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 13.r,vertical: 14.r),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            color: isDark ? MyColors.blackOpacity : MyColors.white,
            borderRadius: BorderRadius.circular(14.r),
          ),
          margin: EdgeInsets.symmetric(horizontal: 20.r,vertical: 10.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(milestones[index],
                style: MyFonts.semiBoldFont.copyWith(
                    color: MyColors.white
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("All Tasks".tr(),
                          style: MyFonts.regularFont.copyWith(
                              color: MyColors.white,
                              fontSize: fontSize - 3.sp
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                          width: ScreenUtil().screenWidth,
                          decoration: BoxDecoration(
                            color: isDark ? MyColors.blackOpacity : MyColors.white,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 8.r),
                          child: Text("1",
                            textAlign: TextAlign.center,
                            style: MyFonts.regularFont.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: fontSize - 4.sp
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Pending".tr(),
                          style: MyFonts.regularFont.copyWith(
                              color: MyColors.white,
                              fontSize: fontSize - 3.sp
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                          width: ScreenUtil().screenWidth,
                          decoration: BoxDecoration(
                            color: isDark ? MyColors.blackOpacity : MyColors.white,
                            borderRadius: BorderRadius.circular(8 .r),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 8.r),
                          child: Text("2",
                            textAlign: TextAlign.center,
                            style: MyFonts.regularFont.copyWith(
                                color: Colors.orange,
                                fontSize: fontSize - 4.sp
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Completed".tr(),
                          style: MyFonts.regularFont.copyWith(
                              color: MyColors.white,
                              fontSize: fontSize - 3.sp
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                          width: ScreenUtil().screenWidth,
                          decoration: BoxDecoration(
                            color: isDark ? MyColors.blackOpacity : MyColors.white,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 8.r),
                          child: Text("5",
                            textAlign: TextAlign.center,
                            style: MyFonts.regularFont.copyWith(
                                color: Colors.green,
                                fontSize: fontSize - 4.sp
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
