import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

class ProjectTypeWidget extends StatelessWidget {
  Function() onTap;
  int selectedCourseTypeIndex;
  int index;
  List<String> categoryData;
   ProjectTypeWidget({Key? key,
   required this.selectedCourseTypeIndex,
   required this.categoryData,
   required this.onTap,
   required this.index,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15.r, vertical: 10.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: selectedCourseTypeIndex == index ?
            Theme.of(context).colorScheme.primary:
            MyColors.blackOpacity,
          ),
          child: Text(categoryData[index],
            style: MyFonts.mediumFont.copyWith(
                fontSize: fontSize - 2.sp,
                color: selectedCourseTypeIndex == index ?
                MyColors.white:
                MyColors.white
            ),
          ),
        ),
      ),
    );
  }
}
