
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../widgets/customize_app_bar3.dart';
import '../../widgets/customize_text_form_field_widget.dart';


class EditAccountPage extends StatefulWidget {
  const EditAccountPage({Key? key}) : super(key: key);

  @override
  _EditAccountPageState createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {

  TextEditingController mobileEditingController = TextEditingController(text: "0568573934");
  TextEditingController emailEditingController = TextEditingController(text: "betterdigital@gmail.com");
  TextEditingController nameEditingController = TextEditingController(text: "Better Digital");
  TextEditingController linkEditingController = TextEditingController(text: "https://www.google.com");

  
  @override
  void dispose() {
    emailEditingController.dispose();
    nameEditingController.dispose();
    mobileEditingController.dispose();
    linkEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomizeAppBar3(
            title: "Account",
            hasLeading: true, hasTrailing: false,
          ),
          SizedBox(height: 40.h,),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.r),
                  child: CustomizeTextFormFieldWidget(
                    hintText: "Harry",
                    hintColor: !isDark ? MyColors.greyTwentySevenColor : MyColors.thirdContainerColor,
                    textInputType: TextInputType.name,
                    controller: nameEditingController,
                    underLineColor: MyColors.fiveDividerColor,
                    textInputAction: TextInputAction.next,
                    textColor: !isDark ?  MyColors.black : MyColors.thirdContainerColor,
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.r),
                  child: CustomizeTextFormFieldWidget(
                    hintText: "Harry@gmail.com",
                    hintColor: !isDark ? MyColors.greyTwentySevenColor : MyColors.thirdContainerColor,
                    textInputType: TextInputType.emailAddress,
                    controller: emailEditingController,
                    underLineColor: MyColors.fiveDividerColor,
                    textInputAction: TextInputAction.next,
                    textColor: !isDark ?  MyColors.black : MyColors.thirdContainerColor,
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.r),
                  child: CustomizeTextFormFieldWidget(
                    hintText: "056*******",
                    hintColor: !isDark ? MyColors.greyTwentySevenColor : MyColors.thirdContainerColor,
                    textInputType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    controller: mobileEditingController,
                    underLineColor: MyColors.fiveDividerColor,
                    textColor: !isDark ?  MyColors.black : MyColors.thirdContainerColor,
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.r),
                  child: CustomizeTextFormFieldWidget(
                    hintText: "https://www.google.com",
                    hintColor: !isDark ? MyColors.greyTwentySevenColor : MyColors.thirdContainerColor,
                    textInputType: TextInputType.name,
                    controller: linkEditingController,
                    underLineColor: MyColors.fiveDividerColor,
                    textColor: !isDark ?  MyColors.black : MyColors.thirdContainerColor,
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  width: 1.sw,
                  margin: EdgeInsets.symmetric(horizontal: 100.r),
                  padding: EdgeInsets.symmetric(vertical: 15.r),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8.r)
                  ),
                  child: Text("Update Profile".tr(),
                  textAlign: TextAlign.center,
                  style: MyFonts.regularFont.copyWith(
                    fontSize: fontSize - 2.sp,
                    color: MyColors.white
                  ),
                  ),
                ),
                SizedBox(height: 60.h,),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
