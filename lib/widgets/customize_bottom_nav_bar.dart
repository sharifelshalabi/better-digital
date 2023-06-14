import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/screens/main/bloc/main_bloc.dart';

import '../constants/theme_constant.dart';

class CustomizeBottomNavBar extends StatelessWidget {
  int currentIndex;
  MainBloc mainBloc;
  PageController pageViewController;
  Function(int value) onTap;
   CustomizeBottomNavBar({Key? key, required this.currentIndex, required this.pageViewController,required this.mainBloc, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      margin: EdgeInsets.symmetric(horizontal: 20.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],

        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.r,vertical: 15.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  mainBloc.onChangeNavBarIndex(0);
                  pageViewController.jumpToPage(0);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/home_icon.png",
                      width: 20.r,
                      height: 20.r,
                      color: currentIndex == 0 ? MyColors.white : MyColors.greyFourteenColor,
                    ),
                    if(currentIndex == 0 )
                    SizedBox(
                        width: 30.r,
                        child: Divider(
                          thickness: 3,
                          color:  MyColors.white
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  mainBloc.onChangeNavBarIndex(1);
                  pageViewController.jumpToPage(1);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/project_icon.png",
                      width: 20.r,
                      height: 20.r,
                      color: currentIndex == 1 ? MyColors.white : MyColors.greyFourteenColor,
                    ),
                    if(currentIndex == 1 )
                    SizedBox(
                        width: 30.r,
                        child: Divider(
                          thickness: 3,
                            color:  MyColors.white
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  mainBloc.onChangeNavBarIndex(2);
                  pageViewController.jumpToPage(2);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/task_icon.png",
                      width: 20.r,
                      height: 20.r,
                      color: currentIndex == 2 ? MyColors.white : MyColors.greyFourteenColor,
                    ),
                    if(currentIndex == 2 )
                    SizedBox(
                        width: 30.r,
                        child: Divider(
                          thickness: 3,
                            color:  MyColors.white
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  mainBloc.onChangeNavBarIndex(3);
                  pageViewController.jumpToPage(3);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/chat_icon.png",
                      width: 20.r,
                      height: 20.r,
                      color: currentIndex == 3 ? MyColors.white : MyColors.greyFourteenColor,
                    ),
                    if(currentIndex == 3 )
                    SizedBox(
                        width: 30.r,
                        child: Divider(
                          thickness: 3,
                            color:  MyColors.white
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  mainBloc.onChangeNavBarIndex(4);
                  pageViewController.jumpToPage(4);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/more_icon.png",
                      width: 20.r,
                      height: 20.r,
                      color: currentIndex == 4 ? MyColors.white : MyColors.greyFourteenColor,
                    ),
                    if(currentIndex == 4 )
                    SizedBox(
                        width: 30.r,
                        child: Divider(
                          thickness: 3,
                            color:  MyColors.white
                        ))
                  ],
                ),
              ),
            ],
          ),
        )
        // BottomNavigationBar(
        //   currentIndex: currentIndex,
        //   elevation: 3,
        //
        //   unselectedItemColor: MyColors.primaryMoreLightColor,
        //   selectedLabelStyle: MyFonts.boldFont.copyWith(
        //       fontSize: 12.sp,
        //       fontWeight: FontWeight.w400,
        //       color: Theme.of(context).colorScheme.primary
        //   ),
        //   unselectedLabelStyle: MyFonts.boldFont.copyWith(
        //       fontSize: 12.sp,
        //       fontWeight: FontWeight.w400,
        //       color: MyColors.primaryMoreLightColor
        //   ),
        //   onTap: onTap,
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Image.asset("assets/images/blog_icon.png",
        //             width: 20.r,
        //             height: 20.r,
        //             color: currentIndex == 0 ? Theme.of(context).colorScheme.primary : null,
        //           ),
        //           SizedBox(
        //               width: 30.r,
        //               child: Divider(
        //                 thickness: 3,
        //             color: Theme.of(context).colorScheme.primary,
        //           ))
        //         ],
        //       ),
        //       label: "",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Padding(
        //         padding:  EdgeInsets.only(bottom: 10.r),
        //         child: Image.asset("assets/images/courses_icon.png",
        //           width: 20.r,
        //           height: 20.r,
        //           color: currentIndex == 1 ? Theme.of(context).colorScheme.primary : null,
        //         ),
        //       ),
        //       label: "Knowledge".tr(),
        //     ),
        //
        //     const BottomNavigationBarItem(
        //         icon: Icon(Icons.person,color: Colors.transparent,),
        //         label: ''
        //     ),
        //
        //     BottomNavigationBarItem(
        //       icon: Padding(
        //         padding:  EdgeInsets.only(bottom: 10.r),
        //         child: Image.asset("assets/images/chat_icon.png",
        //           width: 20.r,
        //           height: 20.r,
        //           color: currentIndex == 3 ? Theme.of(context).colorScheme.primary : null,
        //         ),
        //       ),
        //       label: "Messaging".tr(),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Padding(
        //         padding:  EdgeInsets.only(bottom: 10.r),
        //         child: Image.asset("assets/images/more_icon.png",
        //           width: 20.r,
        //           height: 20.r,
        //           color: currentIndex == 4? Theme.of(context).colorScheme.primary : null,
        //         ),
        //       ),
        //       label: "More".tr(),
        //     ),
        //   ],
        //
        // ),
      ),
    );
  }
}
