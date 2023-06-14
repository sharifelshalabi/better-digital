import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

class ChatTextField extends StatelessWidget {
  Function() onTap;
  Function() onAttachmentTap;
  TextEditingController controller;
  ChatTextField({Key? key,required this.controller,required this.onTap,required this.onAttachmentTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(24.r, 0, 24.r, 20.r),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: TextField(
              textInputAction: TextInputAction.done,
              controller: controller,
              style:  MyFonts.regularFont.copyWith(
                color: Colors.black,
                  fontSize: fontSize - 2.sp),
              maxLines: 1,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(48.r)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    borderRadius: BorderRadius.circular(48.r)
                ),
                floatingLabelBehavior:
                FloatingLabelBehavior.always,
                filled: true,
                fillColor: MyColors.white,
                suffixIcon: InkWell(
                  onTap:() {
                   showBottomSheet(
                     context: context, builder: (context) {
                     return  Container(
                       padding: EdgeInsets.all(14.r),
                       height: 100.h,
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Icon(Icons.insert_drive_file,
                                 color: Theme.of(context).colorScheme.primary,
                                 size: 25.sp,
                               ),
                               SizedBox(width: 10.w,),
                               Expanded(
                                 child: InkWell(
                                   onTap:onAttachmentTap,
                                   child: Text("Add file".tr(),
                                     style: MyFonts.mediumFont.copyWith(
                                         fontSize: fontSize - 2.sp,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           )
                         ],
                       ),
                     );
                   },);
                  },
                  child: Icon(Icons.attach_file,
                  color: Theme.of(context).colorScheme.primary,
                  size: 25.sp,
                  ),
                ),
                contentPadding:
                EdgeInsets.symmetric(
                    vertical: 10.r,
                    horizontal: 25.r),
                hintText:
                'Type a message...'
                    .tr(),
                hintStyle: MyFonts.regularFont.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: fontSize - 2.sp),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 16.r,),
          InkWell(
            onTap: onTap,
            child: Image.asset("assets/images/send_icon.png",
              width: 44.r,
              height: 44.r,
            ),
          )
        ],
      ),
    );
  }
}
