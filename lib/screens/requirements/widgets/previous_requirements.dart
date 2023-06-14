import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

List<String> type = [
  "color_icon.png",
  "text_icon.png",
  "file_icon.png",
  "video_icon.png",
  "image_icon.png",
  "color_icon.png",
  "text_icon.png",
  "file_icon.png",
  "video_icon.png",
  "image_icon.png",
];
class PreviousRequirements extends StatelessWidget {
  const PreviousRequirements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: ListView.builder(
          itemCount: type.length,
          padding:  EdgeInsets.symmetric(horizontal: 16.r),
          itemBuilder: (context, index) {
            return  Container(
              margin:  EdgeInsets.only(bottom: index + 1 == type.length ? 100.r : 15.r),
              padding:  EdgeInsets.symmetric(horizontal: 16.r,vertical: 15.r),
              decoration: BoxDecoration(
                color: isDark ? MyColors.blackOpacity : MyColors.white,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/${type[index]}",
                    width: 30.r,
                    height: 30.r,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Column(
                      children: [
                        Text("What is the primary colorWhat is the primary?",
                          style: MyFonts.regularFont.copyWith(
                            fontSize: fontSize - 3.sp,
                          ),
                        ),
                        SizedBox(height: 8.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("2023-04-28",
                              style: MyFonts.regularFont.copyWith(
                                  fontSize: fontSize - 4.sp,
                                  color: MyColors.greSixteenColor
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },));
  }
}
