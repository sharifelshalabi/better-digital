import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../globals.dart';
import '../../../injection.dart';
import '../../../widgets/customize_bottom_nav_bar.dart';

import '../../constants/theme_constant.dart';
import '../chat/conversation_page.dart';
import '../courses/courses_page.dart';
import '../home/home_page.dart';
import '../more/more_page.dart';
import '../projects/projects_page.dart';
import '../requirements/requirements_page.dart';
import 'bloc/main_bloc.dart';
import 'bloc/main_state.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
  final bool isWelcome;
  const MainPage({Key? key, this.isWelcome = false}) : super(key: key);
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  MainBloc mainBloc = sl<MainBloc>();


  PageController pageViewController = PageController(initialPage: 2);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      bloc: mainBloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: [
                Image.asset("assets/images/background_image.png",
                width: 1.sw,
                height: 1.sh,
                fit: BoxFit.cover,
                ),
                PageView(
                  controller: pageViewController,
                  onPageChanged: (index) {
                    mainBloc.onChangeNavBarIndex(index);
                    pageViewController.jumpToPage(index);
                  },
                  children: [
                    // RequirementsPage(isFromProject: false),
                    HomePage(),
                    ProjectsPage(),
                    RequirementsPage(isFromProject: false),
                    ConversationPage(),
                    MorePage(),
                  ],
                ),
              ],
            ),
            // floatingActionButton: Padding(
            //   padding: EdgeInsets.only(top: 20.r),
            //   child: SizedBox(
            //     height: 85.r,
            //     width: 85.r,
            //     child: FittedBox(
            //       child: FloatingActionButton(
            //           backgroundColor: Colors.white,
            //           onPressed: () {
            //             mainBloc.onChangeNavBarIndex(2);
            //             pageViewController.jumpToPage(2);
            //           },
            //           child: Image.asset(
            //             "assets/images/home_bottom_bar.png",
            //             fit: BoxFit.fill,
            //
            //           )),
            //     ),
            //   ),
            // ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: CustomizeBottomNavBar(
              currentIndex: state.selectedNavBarIndex,
              pageViewController: pageViewController,
              mainBloc: mainBloc,
              onTap: (value) {
                mainBloc.onChangeNavBarIndex(value);
                pageViewController.jumpToPage(value);
              },
            ));
      },
    );
  }
}
