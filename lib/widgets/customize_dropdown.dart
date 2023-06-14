import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/theme_constant.dart';
import '../globals.dart';


class CustomizeDropdown extends StatelessWidget {
  Function(dynamic value) onSaved;
  String hintTitle;
  List<DropdownMenuItem> items;
   CustomizeDropdown({Key? key,required this.onSaved,required this.hintTitle,required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2(
      decoration: InputDecoration(
        isDense: true,
        fillColor: isDark ? MyColors.dialogTitleColor : MyColors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 10.r),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(8.r),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      isExpanded: true,
      hint:  Text(
        hintTitle.tr(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: MyFonts.regularFont.copyWith(
            fontSize: fontSize - 3.sp,
            color: MyColors.twoHintColor
        ),
      ),
      items: items,
      // validator: (value) {
      //   if (value == null) {
      //     return 'Please select gender.';
      //   }
      //   return null;
      // },
      onChanged: (value) {
        //Do something when changing the item if you want.
      },
      onSaved: onSaved,
      buttonStyleData:  ButtonStyleData(
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 4.r),
      ),
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Theme.of(context).colorScheme.primary,
        ),
        iconSize: 20.sp,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
