
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants/theme_constant.dart';
import '../../../../../globals.dart';


class SentFileMessageScreen extends StatelessWidget {
  final String message;
  final String url;
  final Function() onTap;
  SentFileMessageScreen({Key? key,required this.message,required this.url,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: EdgeInsets.only(
          right: context.locale.languageCode == "en" ? 24.r : 50.r,
          left: context.locale.languageCode == "ar" ? 24.r : 50.r,
          top: 10.r,
          bottom: 10.r
      ),
      child: InkWell(
        onTap:onTap ,
        child: Row(
          mainAxisAlignment:context.locale.languageCode == "en" ?
          MainAxisAlignment.end:
          MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.r,vertical: 10.r),
                  decoration: BoxDecoration(
                    color: MyColors.oneBlueColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.r),
                      topLeft: context.locale.languageCode == "ar" ? Radius.circular(24.r) : Radius.circular(0),
                      topRight: context.locale.languageCode == "en" ? Radius.circular(24.r) : Radius.circular(0),
                      bottomRight: Radius.circular(24.r),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            shape: BoxShape.circle,
                          ),
                          child:
                          // !state.isLoading ?
                          Icon(Icons.insert_drive_file,
                            color: MyColors.blackEightColor,
                            size: 25.sp,
                          )
                          // CircularProgressIndicator(color: Theme.of(context).colorScheme.primary,)
                      ),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text(
                          message,
                          style: MyFonts.regularFont.copyWith(
                              color: MyColors.blackEightColor,
                              fontSize: fontSize - 2.sp
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}