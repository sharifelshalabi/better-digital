import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../shared_preferences.dart';
import '../../widgets/text_form_field_widget.dart';
import '../main/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _toggleLogin() {
    setState(() {
      obscureTextPassword = !obscureTextPassword;
    });
  }

  bool obscureTextPassword = true;
  bool isRemember = false;
  bool isLoading = false;
  TextEditingController emailSignInController = TextEditingController();
  TextEditingController passwordSignInController = TextEditingController();
  FocusNode emailSignInNode = FocusNode();
  FocusNode passwordSignInNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    rememberEmail = Preferences.getRememberEmailLocalMemory();
    isRemember = Preferences.getIsRemember();
    if (rememberEmail.isNotEmpty) {
      emailSignInController.text = rememberEmail;
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 150.h, left: 15.r, right: 15.r, bottom: 40.r),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Better Digital".tr(),
                            style: MyFonts.mediumFont.copyWith(
                              fontSize: fontSize + 20.sp,
                              color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80.h,
                        ),
                        Center(
                          child: Text(
                            "Welcome back".tr(),
                            style: MyFonts.mediumFont.copyWith(
                              fontSize: fontSize + 8.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormFieldWidget(
                          textInputAction: TextInputAction.next,
                          controller: emailSignInController,
                          // focusNode: emailSignInNode,
                          textInputType: TextInputType.emailAddress,
                          textColor: MyColors.greyTwentyFiveColor,
                          hintColor: MyColors.greyTwentyFiveColor,
                          focusBorderColor: Theme.of(context).colorScheme.primary,
                          hintText: "admin@gmail.com",
                          maxLines: 1,
                          enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
                        ),

                        TextFormFieldWidget(
                          textInputAction: TextInputAction.done ,
                          controller: passwordSignInController,
                          // focusNode: emailSignInNode,
                          textInputType: TextInputType.visiblePassword,
                          suffixIcon: obscureTextPassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                          suffixCallBack: _toggleLogin,
                          isPassword: obscureTextPassword,
                          textColor: MyColors.greyTwentyFiveColor,
                          hintColor: MyColors.greyTwentyFiveColor,
                          focusBorderColor: Theme.of(context).colorScheme.primary,
                          hintText: "Password".tr(),
                          maxLines: 1,
                          enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
                        ),

                        SizedBox(height: 43.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 35.w),
                          width: double.infinity,
                          height: 56.h,
                          decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(10.r)),
                          child: MaterialButton(
                            onPressed: () {

                            },
                            highlightElevation: 0,
                            elevation: 0,
                            color: Colors.transparent,
                            child: Text("Login".tr(), style: MyFonts.regularFont.copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(
                                //   builder: (context) {
                                //     return const ForgetPassword();
                                //   },
                                // ));
                              },
                              child: Text(
                                "Forgot password".tr(),
                                style: MyFonts.mediumFont.copyWith(fontSize: fontSize - 2.sp, color: Theme.of(context).colorScheme.primary),
                              )),
                        ),
                        SizedBox(height: 40.h),
                        TextButton(
                          onPressed: () async {
                            Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) {
                                return const MainPage();
                              },
                            ));
                          },
                          child: Text(
                            "Skip".tr(),
                            style: MyFonts.semiBoldFont.copyWith(
                              fontSize: fontSize - 2.sp,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

  }
}
