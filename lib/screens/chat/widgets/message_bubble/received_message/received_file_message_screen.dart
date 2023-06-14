
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_file_plus/open_file_plus.dart';

import '../../../../../constants/theme_constant.dart';
import '../../../../../globals.dart';
import '../../../../../injection.dart';
import '../../../bloc/chat_bloc.dart';
import '../../../bloc/chat_state.dart';

ChatBloc chatBloc = sl<ChatBloc>();

class ReceivedFileMessageScreen extends StatelessWidget {
  final String message;
  final String url;
  ReceivedFileMessageScreen({Key? key,required this.message,required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<ChatBloc, ChatState>(
      bloc: chatBloc,
  listener: (context, state) {
    if(state.isSuccess){
      OpenFile.open(state.filePath,);
      print(state.filePath);
      print("state.filePath");
    }
  },
  builder: (context, state) {
    return Padding(
      padding: EdgeInsets.only(
          right: context.locale.languageCode == "ar" ? 24.r : 50.r,
          left: context.locale.languageCode == "en" ? 24.r : 50.r,
          top: 10.r,
          bottom: 10.r
      ),
      child: InkWell(
        onTap: () {
          print('objectsss');
          chatBloc.onDownloadFile(filePath: url);
        },
        child: Row(
          mainAxisAlignment: context.locale.languageCode == "en" ?
          MainAxisAlignment.start:
          MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Theme.of(context).colorScheme.primary)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: Image.asset("assets/images/example.png",
                  height: 32.r,
                  width: 32.r,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SizedBox(width: 8.w,),
            Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.r,vertical: 10.r),
                  decoration: BoxDecoration(
                    color: MyColors.oneBlueColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.r),
                      topLeft: context.locale.languageCode == "ar" ? Radius.circular(24.r) : Radius.circular(0),
                      topRight: context.locale.languageCode == "en" ? Radius.circular(24.r) : Radius.circular(0),
                      bottomRight: Radius.circular(24.r),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.r),
                        decoration: BoxDecoration(
                          color: MyColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: !state.isLoading ?
                        Icon(Icons.insert_drive_file,
                          color: MyColors.blackEightColor,
                          size: 25.sp,
                        ):
                        CircularProgressIndicator(color: Theme.of(context).colorScheme.primary,)
                      ),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Text(
                          message,
                        style: MyFonts.regularFont.copyWith(
                        color: MyColors.blackEightColor,
                            fontSize: fontSize - 2.sp
                        ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  },
);
  }
}