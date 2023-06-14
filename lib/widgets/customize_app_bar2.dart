import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../globals.dart';

class CustomizeAppBar2 extends StatelessWidget {
  String title;
  bool isNotMainPage;
  bool hasTrailing;
  IconData trailingIcon;
  Function() onTap;
  CustomizeAppBar2({Key? key,
    required this.title,
    required this.isNotMainPage,
    required this.trailingIcon,
    required this.hasTrailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height: 57.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Visibility(
                      visible: isNotMainPage,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 38.r,
                          height: 38.r,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r), color: Colors.white),
                          child: Image.asset(
                            "assets/images/arrow_back_icon_$lan.png",
                            width: 7.r,
                            height: 12.r,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text(title.tr(),
                        style: MyFonts.boldFont,
                      ),
                    ),
                  ],
                ),
              ),
              isNotMainPage && hasTrailing ?
              InkWell(
                onTap: onTap,
                child: Container(
                  height: 38.r,
                  width: 38.r,
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Icon(trailingIcon,
                    size: 20.sp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ):
              SizedBox(
                height: 38.r,
                width: 38.r,),
            ],
          ),
        ),
      ],
    );
  }
}
