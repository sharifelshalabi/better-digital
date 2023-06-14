import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

class FileContainer extends StatelessWidget {
  const FileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 13.r,vertical: 14.r),
      width: ScreenUtil().screenWidth,
      decoration: BoxDecoration(
        color: isDark ? MyColors.blackOpacity : MyColors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text("main_page.dart",
                  style: MyFonts.boldFont.copyWith(
                    color: MyColors.white,
                  ),
                ),
              ),
              SizedBox(width: 8.w,),
              Row(
                children: [
                  Icon(Icons.download_sharp,
                    size: 20.sp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 8.w,),
                  Icon(Icons.delete,
                    size: 20.sp,
                    color: MyColors.errorColor,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).colorScheme.primary)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: Image.asset("assets/images/example.png",
                    height: 32.r,
                    width: 32.r,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              SizedBox(width: 8.w,),
              Expanded(
                child: Text("${"Uploaded by:".tr()} Mike Joram",
                  style: MyFonts.mediumFont.copyWith(
                      color: MyColors.white,
                      fontSize: fontSize - 2.sp
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("05-02-2023",
                textAlign: TextAlign.end,
                style: MyFonts.regularFont.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: fontSize - 2.sp
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}


