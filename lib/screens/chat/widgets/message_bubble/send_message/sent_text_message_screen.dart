
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/theme_constant.dart';
import '../../../../../globals.dart';


class SentTextMessageScreen extends StatelessWidget {
  final String message;
  SentTextMessageScreen({Key? key,required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: EdgeInsets.only(
          right: context.locale.languageCode == "en" ? 24.r : 50.r,
          left: context.locale.languageCode == "ar" ? 24.r : 50.r,
          top: 10.r,
          bottom: 10.r
      ),
      child: Row(
        mainAxisAlignment:context.locale.languageCode == "en" ?
        MainAxisAlignment.end:
        MainAxisAlignment.start,
        children: <Widget>[
          Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.r,vertical: 10.r),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    bottomLeft: context.locale.languageCode == "en" ? Radius.circular(24.r) : Radius.circular(0),
                    bottomRight: context.locale.languageCode == "ar" ? Radius.circular(24.r) : Radius.circular(0),
                    topRight: Radius.circular(24.r),
                  ),
                ),
                child: Text(
                  message,
                  style: MyFonts.regularFont.copyWith(
                    color: MyColors.white,
                    fontSize: fontSize - 2.sp
                  ),
                ),
              )),
        ],
      ),
    );
  }
}