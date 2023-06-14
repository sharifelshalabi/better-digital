import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/screens/home/widgets/overview_widget.dart';


import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../injection.dart';
import '../../widgets/custom_carousel_slider2.dart';
import '../../widgets/customize_app_bar3.dart';
import '../../widgets/text_form_field_widget.dart';
import '../requirements/requirements_page.dart';
import '../requirements/widgets/current_requirements.dart';
import '../home/bloc/home_bloc.dart';
import '../home/bloc/home_state.dart';
import 'widgets/files_container.dart';
import 'widgets/milestones_widget.dart';
import 'widgets/project_type_widget.dart';


class ProjectDetailPage extends StatefulWidget {
  const ProjectDetailPage({Key? key}) : super(key: key);

  @override
  _ProjectDetailPageState createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {

  TextEditingController feedbackEditingController = TextEditingController(text: '');

  HomeBloc homeBloc = sl<HomeBloc>();

  List<Widget> widgetList = [

  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
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
                title: "Better digital",
                hasLeading: true,
                hasTrailing: false,
              ),
              SizedBox(
                height: 40.h,),
              SizedBox(
                height: 40.h,
                child: ListView.builder(
                  itemCount: 5,
                  padding: EdgeInsets.symmetric(horizontal: 8.r),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProjectTypeWidget(
                      selectedCourseTypeIndex: state.currentIndex,
                      index: index,
                      categoryData: [
                        "Overview".tr(),
                        "Details".tr(),
                        "Tasks".tr(),
                        "Milestones".tr(),
                        "Files".tr(),
                        // "Comments".tr(),
                        // "Financial".tr(),
                      ],
                      onTap: (){
                        homeBloc.onChangePagesIndex(index: index);
                      },
                    );
                  },),
              ),
              SizedBox(
                height: 20.h,),
              state.currentIndex == 0 ?
              OverviewWidget(feedbackEditingController: feedbackEditingController):
              state.currentIndex == 1 ?
              Expanded(
                child: ListView(
                  padding:  EdgeInsets.symmetric(horizontal: 16.r),
                  children: [
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: MyFonts.mediumFont.copyWith(
                        fontSize: fontSize - 2.sp,
                      ),
                    ),
                  ],
                ),
              ):
              state.currentIndex == 2 ?
              Expanded(child: RequirementsPage(isFromProject: true,)):
              state.currentIndex == 3 ?
              Expanded(child: MilestonesWidget()):
              FileContainer()
            ],
          ),
        ],
      ),
    );
  },
);
  }
}
