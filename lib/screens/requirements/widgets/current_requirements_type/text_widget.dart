import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/theme_constant.dart';
import '../../../../globals.dart';
import '../../../../widgets/text_form_field_widget.dart';


class TextWidget extends StatelessWidget {
  String question;
  TextEditingController textEditingController;
   TextWidget({Key? key,required this.textEditingController,required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(question,
            style: MyFonts.regularFont.copyWith(
              fontSize: fontSize - 3.sp,
            ),
          ),
          SizedBox(height: 8.h,),
          Row(
            children: [
              Expanded(
                child: TextFormFieldWidget(
                  textInputAction: TextInputAction.done,
                  controller: textEditingController,
                  // focusNode: emailSignInNode,
                  textInputType: TextInputType.name,
                  textColor: isDark ? MyColors.thirdContainerColor : MyColors.greyTwentyFiveColor,
                  hintColor: isDark ? MyColors.thirdContainerColor : MyColors.greyTwentyFiveColor,
                  focusBorderColor: Theme.of(context).colorScheme.primary,
                  hintText: "Write something".tr(),
                  maxLines: 1,
                  enabledBorder: MyColors.greyTwentyFiveColor.withOpacity(0.16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
