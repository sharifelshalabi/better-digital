import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

class SearchTextField extends StatelessWidget {
  TextEditingController searchEditingController;
  FocusNode searchFocusNode;
  Function() onEditingComplete;
  Function(String value) onChanged;
  Function(String)? onSubmitted;
  VoidCallback voidCallback;

  SearchTextField(
      {Key? key,
      required this.searchEditingController,
      required this.searchFocusNode,
      required this.onChanged,
      required this.onEditingComplete,
      required this.voidCallback,
      required this.onSubmitted
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchEditingController,
      focusNode: searchFocusNode,
      onSubmitted: onSubmitted,
      style: MyFonts.regularFont.copyWith(fontSize: fontSize - 4.sp),
      onEditingComplete: onEditingComplete,
      onChanged: onChanged,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: MyColors.textFieldHintColor,
            size: 30.sp,
          ),
          hintText: "Search".tr(),
          hintStyle: MyFonts.regularFont.copyWith(
            fontSize: fontSize - 1.sp,
            color: MyColors.textFieldHintColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          suffixIcon: searchEditingController.text.trim().isNotEmpty
              ? GestureDetector(
                  onTap: voidCallback,
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                      child: Padding(
                          padding: EdgeInsets.all(0.sp),
                          child: Icon(
                            Icons.close,
                            size: 16.sp,
                            color: Colors.white,
                          )),
                    ),
                  ),
                )
              : const SizedBox()),
    );
  }
}
