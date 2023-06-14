import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/screens/courses/courses_page.dart';
import 'package:project_manger/screens/proposals/widgets/prposals_list.dart';
import 'package:project_manger/screens/users/users_page.dart';
import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../shared_preferences.dart';
import '../../widgets/log_out_dialog_widget.dart';
import '../../widgets/toggle_switch_widget.dart';
import '../about/about_page.dart';
import '../account/edit_account_page.dart';
import '../bills/bills_page.dart';
import '../chat/conversation_page.dart';
import '../contact/contact_page.dart';
import '../contract/contract_page.dart';
import '../privacy_policy/privacy_policy_page.dart';
import '../request_project/request_project_page.dart';
import '../terms/terms_page.dart';
import 'widget/more_card.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              SizedBox(
                height: 60.h,
              ),
              MoreCard(
                title: "My Account",
                iconName: "account_icon.png",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditAccountPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),

              MoreCard(
                title: "Bills",
                iconName: "",
                iconData: Icons.credit_card,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BillsPage(isFromHome: false),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Knowledge base",
                iconName: "",
                iconData: Icons.library_books,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CoursesPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Request new project",
                iconName: "",
                iconData: Icons.post_add,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RequestProjectPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Contracts",
                iconName: "",
                iconData: Icons.content_paste_rounded,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContractPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Users",
                iconName: "",
                iconData: CupertinoIcons.person_2_fill,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UsersPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Leave a Suggest",
                iconName: "contact_icon.png",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Proposals",
                iconName: "proposal_icon.png",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProposalsList(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.r, vertical: 14.r),
                  width: ScreenUtil().screenWidth,
                  decoration: BoxDecoration(
                    color: isDark ? MyColors.blackOpacity : MyColors.white,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/language_icon.png',
                            width: 40.r,
                            height: 40.r,
                            color: Theme.of(context).colorScheme.primary ,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "Language".tr(),
                            style: MyFonts.mediumFont.copyWith(
                                color: !isDark ? MyColors.blackFourColor : MyColors.thirdContainerColor,
                                fontSize: fontSize - 4.sp
                            ),
                          )
                        ],
                      ),
                      ToggleSwitchWidget(
                        minHeight: 28.h,
                        minWidth: 40.w,
                        fontSize: 8.r,
                        totalSwitches: 2,
                        initialLabelIndex: lan == "ar" ? 0 : 1,
                        labels: ["AR", "EN"],
                        onToggle: (value) {
                          lan == "en" ? context.setLocale(Locale('ar', 'AE')) : context.setLocale(Locale('en', 'US'));
                          lan == "en" ? lan = "ar" : lan = "en";
                          Preferences.saveEnglish(lan == "en");
                          setState(() {});
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Who We Are",
                iconName: "about_icon.png",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Privacy Policy",
                iconName: "privacy_icon.png",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacyPolicyPage(),
                      ));
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Terms & Conditions",
                iconName: "terms_icon.png",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermsPage(),
                      ));
                },
              ),
              // SizedBox(
              //   height: 14.h,
              // ),
              // MoreCard(
              //   title: "My Favorites",
              //   iconName: "favorite_icon.png",
              //   onTap: () {
              //     // Navigator.push(
              //     //     context,
              //     //     MaterialPageRoute(
              //     //       builder: (context) => FavoritesPage(),
              //     //     ));
              //   },
              // ),
              // SizedBox(
              //   height: 14.h,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16.r),
              //   child: Container(
              //     padding: EdgeInsets.symmetric(horizontal: 13.r, vertical: 14.r),
              //     width: ScreenUtil().screenWidth,
              //     decoration: BoxDecoration(
              //       color: MyColors.white,
              //       borderRadius: BorderRadius.circular(14.r),
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Row(
              //           children: [
              //             Image.asset(
              //               'assets/images/language_icon.png',
              //               width: 40.r,
              //               height: 40.r,
              //             ),
              //             SizedBox(
              //               width: 25.w,
              //             ),
              //             Text(
              //               "Language".tr(),
              //               style: MyFonts.mediumFont.copyWith(fontSize: 14.sp),
              //             )
              //           ],
              //         ),
              //         ToggleSwitchWidget(
              //           minHeight: 28.h,
              //           minWidth: 40.w,
              //           fontSize: 8.r,
              //           initialLabelIndex: lan == "ar" ? 0 : 1,
              //           labels: ["AR", "EN"],
              //           onToggle: (value) {
              //             lan == "en" ? context.setLocale(Locale('ar', 'AE')) : context.setLocale(Locale('en', 'US'));
              //             lan == "en" ? lan = "ar" : lan = "en";
              //             Preferences.saveEnglish(lan == "en");
              //             setState(() {});
              //           },
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 14.h,
              ),
              MoreCard(
                title: "Sign out",
                iconName: "logout_icon.png",
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return LogOutDialogWidget();
                      });
                },
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
