import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../../../widgets/cached_image_widget.dart';
import '../bloc/courses_bloc.dart';
import '../course_detail_page.dart';


class CoursesGridView extends StatelessWidget {
  List<String> itemsDataModel;
  ScrollController scrollController;
  CoursesBloc coursesBloc;
   CoursesGridView({Key? key,required this.itemsDataModel,required this.coursesBloc,required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      crossAxisCount: 2,
      controller: scrollController,
      padding: EdgeInsets.only(left: 16.r,right: 16.r,bottom: 100.r),
      mainAxisSpacing: 20.r,
      crossAxisSpacing: 22.r,
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CourseDetailPage(),));
          },
          child: Container(
            decoration: BoxDecoration(
              color: isDark ? MyColors.blackOpacity : MyColors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 140.h,
                    decoration: BoxDecoration(
                        color:MyColors.white,
                        borderRadius: BorderRadius.circular(5.r)
                    ),

                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.r),
                        child: Image.asset('assets/images/example3.png',
                        width: 1.sw,
                        height: 140.h,
                          fit: BoxFit.cover,
                        ),
                        // child: CachedImageWidget(
                        //   image: itemsDataModel[index].image,
                        //   size: 140.h,
                        // )
                    )
                ),
                SizedBox(height: 15.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.r),
                  child: Text("Security course\n",
                    maxLines: 2,
                    style: MyFonts.mediumFont.copyWith(
                        fontSize: fontSize - 1.sp,
                        color: !isDark ? MyColors.blackTwoColor : MyColors.thirdContainerColor
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.r),
                  child: Text("Security course Security course Security course Security course",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: MyFonts.mediumFont.copyWith(
                        fontSize: fontSize - 4.sp,
                        color: !isDark ? MyColors.greyElevenColor : MyColors.hintColor
                    ),
                  ),
                ),
                SizedBox(height: 15.h,)
              ],
            ),
          ),
        );
      },
    );
  }
}
