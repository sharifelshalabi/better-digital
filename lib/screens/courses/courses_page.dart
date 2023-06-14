import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../injection.dart';
import '../../widgets/customize_app_bar2.dart';
import '../../widgets/empty_widget.dart';
import '../../widgets/search_widget.dart';
import 'bloc/courses_bloc.dart';
import 'bloc/courses_state.dart';
import 'widgets/courses_grid_view.dart';
import 'widgets/courses_type_widget.dart';


class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {

  CoursesBloc coursesBloc = sl<CoursesBloc>();
  ScrollController scrollController = ScrollController();

  int page = 1;

  List<String> categoryType = [
    "All",
    "Applications",
    "Web",
    "Dashboards",
  ];


  // @override
  // void initState() {
  //   coursesBloc.onChangeCourseTypeIndex(selectedCourseTypeIndex: 0);
  //   coursesBloc.onGetCategories();
  //   coursesBloc.onGetCoursesItems(page: 1,category_id: 0);
  //   scrollController.addListener(() {
  //     if (scrollController.position.maxScrollExtent == scrollController.offset) {
  //       if (coursesBloc.state.itemsModel.links != null && coursesBloc.state.itemsModel.links!.next != null) {
  //         page++;
  //         coursesBloc.onGetCoursesItems(page: page,category_id: coursesBloc.state.selectedCourseTypeIndex);
  //         // setState(() {});
  //       }
  //     }
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoursesBloc, CoursesState>(
      bloc: coursesBloc,
      listener: (context, state) {

      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state.isLoading,
          child: Column(
            children: [
              // CustomizeAppBar2(
              //   title: "Courses",
              //   isNotMainPage: false,
              //   hasTrailing: false,
              //   trailingIcon: Icons.share_outlined,
              //   onTap: (){},
              // ),
              SizedBox(height: 54.h,),
              const SearchWidget(itemType: "courses", categoryType: 'Course',    ),
              SizedBox(height: 29.h,),
              SizedBox(
                height: 40.h,
                child: ListView.builder(
                  itemCount: 4,
                  padding: EdgeInsets.symmetric(horizontal: 16.r),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CoursesTypeWidget(
                      selectedCourseTypeIndex: state.selectedCourseTypeIndex,
                      index: index,
                      categoryData: categoryType,
                      onTap: (){
                        coursesBloc.onChangeCourseTypeIndex(selectedCourseTypeIndex: index);
                        // page = 1;
                        // coursesBloc.onGetCoursesItems(page: 1,category_id: index);
                      },
                    );
                  },),
              ),
              SizedBox(height: 25.h,),
              if(categoryType.isEmpty && !state.isLoading)...[
              EmptyWidget(
                title: "Ups!... no data found",
                description: "Please try later",
                image: "empty_favorite.png",
              )
              ]
              else...[
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CoursesGridView(
                        itemsDataModel: categoryType,
                        scrollController:scrollController,
                      coursesBloc: coursesBloc,
                    ),
                    if(state.isPaginate)
                      SizedBox(
                          height: 270.h,
                          child: Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.primary,)))
                  ],
                ),
              ),
        ]
            ],
          ),
        );
      },
    );
  }
}
