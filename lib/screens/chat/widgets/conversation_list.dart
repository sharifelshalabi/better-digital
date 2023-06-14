import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../chat_page.dart';


class ConversationList extends StatelessWidget {
  const ConversationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 16,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(title: "Steve"),));
            },
            child: Padding(
              padding:  EdgeInsets.fromLTRB(24.r, 0, 24.r, 20.r),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset("assets/images/example.png",
                      width: 48.r,
                      height: 48.r,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text("Victoria Andersson",
                                style: MyFonts.mediumFont.copyWith(
                                    fontSize: fontSize - 2.sp,
                                    color: !isDark ? MyColors.greyOneColor : MyColors.thirdContainerColor
                                ),
                              ),
                            ),
                            Text("11:20 am",
                              style: MyFonts.regularFont.copyWith(
                                  fontSize: fontSize - 6.sp,
                                  color: MyColors.greyTwentySixColor
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text("That’s great, I look forward to hearing ba",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: MyFonts.mediumFont.copyWith(
                                    fontSize: fontSize - 4.sp,
                                    color: MyColors.greyTwentySixColor
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.r),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.12),
                              ),
                              child: Text("1",
                                style: MyFonts.mediumFont.copyWith(
                                    fontSize: fontSize - 4.sp,
                                    color: Theme.of(context).colorScheme.primary
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },),
    );
  }
}
