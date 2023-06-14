
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/theme_constant.dart';
import '../../../../globals.dart';

class ColorWidget extends StatefulWidget {
  String question;
  ColorWidget({Key? key,required this.question}) : super(key: key);

  @override
  State<ColorWidget> createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {

  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  bool isChoose = false ;

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

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
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: pickerColor,
                      onColorChanged: changeColor,
                      labelTextStyle: MyFonts.regularFont,
                      showLabel: false,
                    ),
                    // Use Material color picker:
                    //
                    // child: MaterialPicker(
                    //   pickerColor: pickerColor,
                    //   onColorChanged: changeColor,
                    //   showLabel: true, // only on portrait mode
                    // ),
                    //
                    // Use Block color picker:
                    //
                    // child: BlockPicker(
                    //   pickerColor: currentColor,
                    //   onColorChanged: changeColor,
                    // ),
                    //
                    // child: MultipleChoiceBlockPicker(
                    //   pickerColors: currentColors,
                    //   onColorsChanged: changeColors,
                    // ),
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      child:  Text("Submit".tr()),
                      onPressed: () {
                        setState(() {
                          currentColor = pickerColor;
                          isChoose = true;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );
            },
            child: Text(
              !isChoose ?
            "Choose Color".tr():
            "Change Color".tr(),
              style: MyFonts.regularFont.copyWith(
                  fontSize: fontSize - 4.sp,
                  color: Theme.of(context).colorScheme.primary
              ),
            ),
          ),
          SizedBox(height: 8.h,),
          if(isChoose)
          Text(currentColor.toString(),
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
