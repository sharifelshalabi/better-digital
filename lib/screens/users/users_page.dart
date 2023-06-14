import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../widgets/customize_app_bar3.dart';
import '../../widgets/text_form_field_widget.dart';


class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController positionController = TextEditingController(text: '');
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    positionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add,
          size: 20.sp,
          color: MyColors.white,
        ),
        onPressed: () {
          nameController.clear();
          emailController.clear();
          phoneController.clear();
          positionController.clear();
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return  SingleChildScrollView(
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Container(
                          decoration: BoxDecoration(
                              color: isDark ? MyColors.blackSixColor : MyColors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(32.r),
                                topLeft: Radius.circular(32.r),
                              )
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10.h,),
                              Text("Add user".tr(),
                                style: MyFonts.mediumFont,
                              ),
                              SizedBox(height: 22.h,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Expanded(
                                    child: TextFormFieldWidget(
                                      textInputAction: TextInputAction.next,
                                      controller: nameController,
                                      // focusNode: emailSignInNode,
                                      textInputType: TextInputType.name,
                                      textColor: !isDark ? MyColors.black : MyColors.white,
                                      hintColor: MyColors.hintColor,
                                      focusBorderColor: Theme.of(context).colorScheme.primary,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please enter your name".tr();
                                        }
                                        return null;
                                      },
                                      hintText: "Name",
                                      enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
                                    ),
                                  ),
                                  SizedBox(width: 3.w,),
                                  Expanded(
                                    child: TextFormFieldWidget(
                                      textInputAction: TextInputAction.next,
                                      controller: emailController,
                                      // focusNode: emailSignInNode,
                                      textInputType: TextInputType.emailAddress,
                                      textColor: !isDark ? MyColors.black : MyColors.white,
                                      hintColor: MyColors.hintColor,
                                      focusBorderColor: Theme.of(context).colorScheme.primary,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please enter your age".tr();
                                        }
                                        return null;
                                      },
                                      hintText: "Email",
                                      enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormFieldWidget(
                                      textInputAction: TextInputAction.next,
                                      controller: phoneController,
                                      // focusNode: emailSignInNode,
                                      textInputType: TextInputType.numberWithOptions(signed: true),
                                      textColor: !isDark ? MyColors.black : MyColors.white,
                                      hintColor: MyColors.hintColor,
                                      focusBorderColor: Theme.of(context).colorScheme.primary,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please enter your phone".tr();
                                        }
                                        return null;
                                      },
                                      hintText: "Phone",
                                      enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
                                    ),
                                  ),
                                  SizedBox(width: 3.w,),
                                  Expanded(
                                    child: TextFormFieldWidget(
                                      textInputAction: TextInputAction.next,
                                      controller: positionController,
                                      // focusNode: emailSignInNode,
                                      textInputType: TextInputType.numberWithOptions(signed: true),
                                      textColor: !isDark ? MyColors.black : MyColors.white,
                                      hintColor: MyColors.hintColor,
                                      focusBorderColor: Theme.of(context).colorScheme.primary,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please enter your position".tr();
                                        }
                                        return null;
                                      },
                                      hintText: "Position",
                                      enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        if (formKey.currentState!.validate()) {
                                          Navigator.pop(context);
                                        }
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 15.r),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4.r),
                                            color: Theme.of(context).colorScheme.primary
                                        ),
                                        child: Text( "Add".tr() ,
                                          textAlign: TextAlign.center,
                                          style: MyFonts.regularFont.copyWith(
                                              color: MyColors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30.h,),
                            ],
                          ),
                        ),
                      ),
                    );
            },
          );
        },
      ),
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
                title: "Users",
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
                          child: Text("Mike Joram",
                            style: MyFonts.semiBoldFont.copyWith(
                                color: MyColors.white
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.edit,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text("Position:".tr(),
                            style: MyFonts.regularFont.copyWith(
                                color: MyColors.white,
                                fontSize: fontSize - 2.sp
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text("Owner",
                            textAlign: TextAlign.end,
                            style: MyFonts.regularFont.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: fontSize - 2.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.email,
                        size: 20.sp,
                        color: Theme.of(context).colorScheme.primary,
                        ),
                        SizedBox(width: 8.w,),
                        Expanded(
                          child: Text("Mike@gmail.com",
                            style: MyFonts.regularFont.copyWith(
                                color: MyColors.white,
                              fontSize: fontSize - 4.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_android,
                        size: 20.sp,
                        color: Theme.of(context).colorScheme.primary,
                        ),
                        SizedBox(width: 8.w,),
                        Expanded(
                          child: Text("+971568573934",
                            style: MyFonts.regularFont.copyWith(
                                color: MyColors.white,
                              fontSize: fontSize - 4.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Column(
                    //         children: [
                    //           Text("Client",
                    //             style: MyFonts.regularFont.copyWith(
                    //                 color: MyColors.white,
                    //                 fontSize: fontSize - 3.sp
                    //             ),
                    //           ),
                    //           SizedBox(height: 10.h,),
                    //           Container(
                    //             padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                    //             width: ScreenUtil().screenWidth,
                    //             decoration: BoxDecoration(
                    //               color: isDark ? MyColors.blackOpacity : MyColors.white,
                    //               borderRadius: BorderRadius.circular(8.r),
                    //             ),
                    //             margin: EdgeInsets.symmetric(horizontal: 8.r),
                    //             child: Text("Pending",
                    //               textAlign: TextAlign.center,
                    //               style: MyFonts.regularFont.copyWith(
                    //                   color: MyColors.errorColor,
                    //                   fontSize: fontSize - 4.sp
                    //               ),
                    //             ),
                    //           )
                    //         ],
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Column(
                    //         children: [
                    //           Text("Provider",
                    //             style: MyFonts.regularFont.copyWith(
                    //                 color: MyColors.white,
                    //                 fontSize: fontSize - 3.sp
                    //             ),
                    //           ),
                    //           SizedBox(height: 10.h,),
                    //           Container(
                    //             padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                    //             width: ScreenUtil().screenWidth,
                    //             decoration: BoxDecoration(
                    //               color: isDark ? MyColors.blackOpacity : MyColors.white,
                    //               borderRadius: BorderRadius.circular(8 .r),
                    //             ),
                    //             margin: EdgeInsets.symmetric(horizontal: 8.r),
                    //             child: Text("Signed",
                    //               textAlign: TextAlign.center,
                    //               style: MyFonts.regularFont.copyWith(
                    //                   color: Colors.green,
                    //                   fontSize: fontSize - 4.sp
                    //               ),
                    //             ),
                    //           )
                    //         ],
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Column(
                    //         children: [
                    //           Text("Status".tr(),
                    //             style: MyFonts.regularFont.copyWith(
                    //                 color: MyColors.white,
                    //                 fontSize: fontSize - 3.sp
                    //             ),
                    //           ),
                    //           SizedBox(height: 10.h,),
                    //           Container(
                    //             padding: EdgeInsets.symmetric(horizontal: 5.r,vertical: 8.r),
                    //             width: ScreenUtil().screenWidth,
                    //             decoration: BoxDecoration(
                    //               color: isDark ? MyColors.blackOpacity : MyColors.white,
                    //               borderRadius: BorderRadius.circular(8.r),
                    //             ),
                    //             margin: EdgeInsets.symmetric(horizontal: 8.r),
                    //             child: Text("Waiting",
                    //               textAlign: TextAlign.center,
                    //               style: MyFonts.regularFont.copyWith(
                    //                   color: MyColors.orange,
                    //                   fontSize: fontSize - 4.sp
                    //               ),
                    //             ),
                    //           )
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // )
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
