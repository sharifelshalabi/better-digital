import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:project_manger/screens/projects/projects_page.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../../request_project/request_project_page.dart';

List<SearchType> searchType = [
  SearchType(image: "rocket_icon.png",title: "Add Project",navigate: ProjectsPage()),
  SearchType(image: "ticket_icon.png",title: "Add Ticket",navigate: ProjectsPage()),
  SearchType(image: "request_icon.png",title: "Add Request",navigate: RequestProjectPage()),
  SearchType(image: "meeting_icon.png",title: "Add Meeting",navigate: ProjectsPage()),
];


class SearchGrid extends StatelessWidget {
  const SearchGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.only(left: 16.r,right: 16.r,bottom: 100.r),
      mainAxisSpacing: 20.r,
      crossAxisSpacing: 22.r,
      itemCount: searchType.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => searchType[index].navigate,));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.r,vertical: 20.r),
            decoration: BoxDecoration(
              color: isDark ? MyColors.blackOpacity : MyColors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/${searchType[index].image}',
                  width: 60.r,
                  fit: BoxFit.cover,
                  color: MyColors.hintColor,
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.r),
                  child: Text(searchType[index].title,
                    style: MyFonts.boldFont.copyWith(
                        fontSize: fontSize + 2.sp,
                        color: !isDark ? MyColors.greyElevenColor : MyColors.whiteTwoColor
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SearchType{
  final String image;
  final String title;
  final Widget navigate;

  SearchType({required this.image,required this.title,required this.navigate});
}