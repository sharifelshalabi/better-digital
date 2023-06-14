import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

class EmptyWidget extends StatelessWidget {
  String image;
  String title;
  String description;
   EmptyWidget({Key? key,
   required this.title,
   required this.image,
   required this.description,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 50.r),
          child: Center(
            child: Image.asset("assets/images/$image",
            ),
          ),
        ),
        SizedBox(height: 15.h,),
        Text(title.tr(),
          style: MyFonts.semiBoldFont.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SizedBox(height: 12.h,),
        Text(description.tr(),
          style: MyFonts.regularFont.copyWith(
              color: MyColors.blackSevenColor,
              fontSize: fontSize - 3.sp
          ),
        ),
      ],
    );
  }
}
