import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/theme_constant.dart';
import '../../../../globals.dart';

File file = File('');
String fileName = '';


class FileWidget extends StatefulWidget {
  String question;
   FileWidget({Key? key,required this.question}) : super(key: key);

  @override
  State<FileWidget> createState() => _FileWidgetState();
}

class _FileWidgetState extends State<FileWidget> {
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
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        File file = File(result.files.single.path ?? '');
        fileName = result.files.single.name;
        setState(() {

        });

      } else {
       }
            },
            child: Text(fileName.isEmpty ?
              "Choose file".tr():
              "Change file".tr(),
              style: MyFonts.regularFont.copyWith(
                  fontSize: fontSize - 4.sp,
                  color: Theme.of(context).colorScheme.primary
              ),
            ),
          ),
          SizedBox(height: 8.h,),
          Text(fileName,
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
