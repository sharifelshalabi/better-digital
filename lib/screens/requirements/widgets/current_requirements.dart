import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';
import '../../../widgets/text_form_field_widget.dart';
import 'current_requirements_type/color_widget.dart';
import 'current_requirements_type/file_widget.dart';
import 'current_requirements_type/image_widget.dart';
import 'current_requirements_type/text_widget.dart';

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

List<Widget> typeWidget = [
  ColorWidget(question: "What is the primary colorWhat is the primary?",),
  TextWidget(question: "What is the primary colorWhat is the primary?",textEditingController: emailSignInController,),
  FileWidget(question: "What is the primary colorWhat is the primary?"),
  ImageWidget(question: "What is the primary colorWhat is the primary?",isImage: false),
  ImageWidget(question: "What is the primary colorWhat is the primary?",isImage: true),
  TextWidget(question: "What is the primary colorWhat is the primary?",textEditingController: emailSignInController,),
  TextWidget(question: "What is the primary colorWhat is the primary?",textEditingController: emailSignInController,),
  FileWidget(question: "What is the primary colorWhat is the primary?"),
  ImageWidget(question: "What is the primary colorWhat is the primary?",isImage: false),
  ImageWidget(question: "What is the primary colorWhat is the primary?",isImage: true),
];

TextEditingController emailSignInController = TextEditingController();

class CurrentRequirements extends StatelessWidget {
  const CurrentRequirements({Key? key}) : super(key: key);

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
                  typeWidget[index]
                ],
              ),
            );
          },));
  }
}
