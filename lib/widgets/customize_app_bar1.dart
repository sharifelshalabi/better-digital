import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../globals.dart';

class CustomizeAppBar1 extends StatelessWidget {
  String title;
  bool hasLeading;
  CustomizeAppBar1({Key? key, required this.title, required this.hasLeading}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(height:57.h ,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if(hasLeading)...[
              InkWell(
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
              ),]
              else...[ SizedBox(
                width: 30.r,
              )],
              Text(
                title.tr(),
                style: MyFonts.boldFont,
              ),
              SizedBox(
                width: 30.r,
              )
            ],
          ),
        ),
      ],
    );
  }
}
