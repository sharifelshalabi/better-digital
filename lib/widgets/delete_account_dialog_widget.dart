import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/theme_constant.dart';



class DeleteAccountDialogWidget extends StatelessWidget {


  const DeleteAccountDialogWidget({Key? key  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(color: MyColors.white, borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Image.asset(
                "assets/images/info_circle_icon.png",
                width: 78.r,
                height: 78.r,
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.r),
              child: Text(
                "Are you sure you want to delete your account?".tr(),
                style: MyFonts.regularFont.copyWith(color: MyColors.dialogTitleColor),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.r),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 26.r, vertical: 10.r),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: MyColors.errorColor),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          "Cancel".tr(),
                          style: MyFonts.mediumFont.copyWith(
                            color: MyColors.errorColor,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {

                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 26.r, vertical: 10.r),
                        decoration: BoxDecoration(
                          color: MyColors.errorColor,
                          border: Border.all(width: 1, color: MyColors.errorColor),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          "Confirm".tr(),
                          style: MyFonts.mediumFont.copyWith(
                            color: MyColors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
          ],
        ),
      ),
    );
  }
}
