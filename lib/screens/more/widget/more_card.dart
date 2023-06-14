import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

class MoreCard extends StatelessWidget {
  String title;
  String iconName;
  IconData? iconData;
  Function() onTap;
   MoreCard({Key? key,required this.title,required this.iconName, this.iconData,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.r),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 13.r,vertical: 14.r),
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            color: isDark ? MyColors.blackOpacity : MyColors.white,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  iconName.isEmpty ?
                  Container(
                    width: 38.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    ),
                    child: Icon(iconData,
                    color: Theme.of(context).colorScheme.primary,
                    ),
                  ):
                  Image.asset("assets/images/$iconName",
                    width: 38.w,
                    height: 42.h,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 20.w,),
                  Text(title.tr(),
                    style: MyFonts.mediumFont.copyWith(
                        color: !isDark ? MyColors.blackFourColor : MyColors.thirdContainerColor,
                        fontSize: fontSize - 4.sp
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward,
                color: Theme.of(context).colorScheme.primary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
