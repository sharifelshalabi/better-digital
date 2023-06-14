import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../widgets/customize_app_bar3.dart';
import '../../widgets/customize_text_form_field_widget.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  TextEditingController mobileEditingController = TextEditingController(text: "");
  TextEditingController emailEditingController = TextEditingController(text: "");
  TextEditingController nameEditingController = TextEditingController(text: "");
  TextEditingController descriptionEditingController = TextEditingController(text: "");

  @override
  void dispose() {
    emailEditingController.dispose();
    nameEditingController.dispose();
    mobileEditingController.dispose();
    descriptionEditingController.dispose();
    super.dispose();
  }

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
                title: "Leave a Suggest",
                hasLeading: true, hasTrailing: false,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 40.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: CustomizeTextFormFieldWidget(
                        hintText: "Your  Name".tr(),
                        hintColor: MyColors.greyTwentySevenColor,
                        textInputType: TextInputType.name,
                        controller: nameEditingController,
                        underLineColor: MyColors.fiveDividerColor,
                        textInputAction: TextInputAction.next,
                        textColor: MyColors.black,
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: CustomizeTextFormFieldWidget(
                        hintText: "Email Address".tr(),
                        hintColor: MyColors.greyTwentySevenColor,
                        textInputType: TextInputType.emailAddress,
                        controller: emailEditingController,
                        underLineColor: MyColors.fiveDividerColor,
                        textInputAction: TextInputAction.next,
                        textColor: MyColors.black,
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: CustomizeTextFormFieldWidget(
                        hintText: "Phone".tr(),
                        hintColor: MyColors.greyTwentySevenColor,
                        textInputType: TextInputType.number,
                        controller: mobileEditingController,
                        underLineColor: MyColors.fiveDividerColor,
                        textColor: MyColors.black,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: CustomizeTextFormFieldWidget(
                        hintText: "Let’s talk about your message".tr(),
                        hintColor: MyColors.greyTwentySevenColor,
                        textInputType: TextInputType.name,
                        controller: descriptionEditingController,
                        underLineColor: MyColors.fiveDividerColor,
                        textColor: MyColors.black,
                      ),
                    ),
                    SizedBox(height: 50.h,),
                    Container(
                      width: 1.sw,
                      margin: EdgeInsets.symmetric(horizontal: 100.r),
                      padding: EdgeInsets.symmetric(vertical: 15.r),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(8.r)
                      ),
                      child: Text("Submit".tr(),
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
        ],
      ),
    );
  }
}
