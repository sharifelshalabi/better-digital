import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../../../widgets/profile_image_widget.dart';

class MorePageHeader extends StatelessWidget {
  const MorePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.r),
      child: Container(
        width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 7.h,),
            ProfileImageWidget(imageSize: 88.r),
            SizedBox(height: 12.h,),
            Text(name,
              style: MyFonts.mediumFont.copyWith(
                  color: MyColors.blackFourColor,
                  fontSize: fontSize + 1.sp
              ),
            ),
            SizedBox(height: 5.h,),
            Text(mobile,
              style: MyFonts.regularFont.copyWith(
                  color: MyColors.greSeventeenColor,
                  fontSize: fontSize - 4.sp
              ),
            ),
            SizedBox(height: 19.h,),
          ],
        ),
      ),
    );
  }
}
