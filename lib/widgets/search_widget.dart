import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../constants/theme_constant.dart';
import '../screens/search/search_page.dart';

class SearchWidget extends StatelessWidget {
  final String itemType;
  final String categoryType;

  const SearchWidget({
    Key? key,
    required this.itemType,
    required this.categoryType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.r),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchPage();
                },
              ));
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 41.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.13), blurRadius: 2),
                ],
              ),
              child: TextField(
                readOnly: true,
                enabled: false,
                onTap: () {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10.r),
                  prefixIcon: Icon(
                    Icons.search,
                    color: MyColors.greyTwentyColor,
                    size: 20.sp,
                  ),
                  hintText: "Search".tr(),
                  hintStyle: MyFonts.regularFont.copyWith(
                    fontSize: 13.sp,
                    color: MyColors.textFieldHintColor,

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
