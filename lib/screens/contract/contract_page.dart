import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../widgets/customize_app_bar3.dart';


class ContractPage extends StatefulWidget {
  const ContractPage({Key? key}) : super(key: key);

  @override
  _ContractPageState createState() => _ContractPageState();
}

class _ContractPageState extends State<ContractPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background_image.png",
            width: 1.sw,
            height: 1.sh,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomizeAppBar3(
                title: "Contract",
                hasLeading: true, hasTrailing: false,
              ),
              SizedBox(height: 40.h,),
              Container(
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
                    Text("Packaging Design",
                    style: MyFonts.semiBoldFont.copyWith(
                      color: MyColors.white
                    ),
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Packaging Design",
                        style: MyFonts.regularFont.copyWith(
                          color: MyColors.white,
                          fontSize: fontSize - 2.sp
                        ),
                        ),
                        Text("120000\$",
                        style: MyFonts.regularFont.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: fontSize - 2.sp
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text("Client",
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
                                child: Text("Pending",
                                  textAlign: TextAlign.center,
                                  style: MyFonts.regularFont.copyWith(
                                      color: MyColors.errorColor,
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
                              Text("Provider",
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
                                child: Text("Signed",
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
                        Expanded(
                          child: Column(
                            children: [
                              Text("Status".tr(),
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
                                child: Text("Waiting",
                                  textAlign: TextAlign.center,
                                  style: MyFonts.regularFont.copyWith(
                                      color: MyColors.orange,
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
