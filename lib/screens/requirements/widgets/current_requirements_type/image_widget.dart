import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../constants/theme_constant.dart';
import '../../../../globals.dart';

final ImagePicker picker = ImagePicker();

late final XFile? image1 ;
String imageName = '';

class ImageWidget extends StatefulWidget {
  String question;
  bool isImage;
   ImageWidget({Key? key,required this.question,required this.isImage}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.question,
            style: MyFonts.regularFont.copyWith(
              fontSize: fontSize - 3.sp,
            ),
          ),
          SizedBox(height: 8.h,),
          InkWell(
            onTap: () async{
      if(widget.isImage) {
        XFile? image = await picker.pickImage(source: ImageSource.gallery);
        imageName = image?.name ?? '';
      }
      else{
        XFile? image = await picker.pickVideo(source: ImageSource.gallery);
        imageName = image?.name ?? '';
      }

        setState(() {

        });


            },
            child: Text(imageName.isEmpty ?
                widget.isImage ?
              "Choose image".tr():
              "Choose video".tr()
            :widget.isImage ?
            "Change image".tr():
                "Change video".tr(),
              style: MyFonts.regularFont.copyWith(
                  fontSize: fontSize - 4.sp,
                  color: Theme.of(context).colorScheme.primary
              ),
            ),
          ),
          SizedBox(height: 8.h,),
          Text(imageName,
            style: MyFonts.regularFont.copyWith(
                fontSize: fontSize - 4.sp,
                color: MyColors.greSixteenColor
            ),
          ),
        ],
      ),
    );
  }
}
