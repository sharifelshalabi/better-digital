import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/theme_constant.dart';
import '../globals.dart';


class CustomizeTextFormFieldWidget extends StatelessWidget {
  //
  const CustomizeTextFormFieldWidget(
      {super.key,
      this.controller,
      this.hintText,
      this.hintColor,
      this.underLineColor,
      this.helpText,
      this.prefixIcon,
      this.suffix,
      this.isPassword,
      this.enabled,
      this.readOnly,
      this.borderColor,
      this.textColor,
      this.isDense,
      this.labelText,
      this.labelColor,
      this.focusBorderColor,
      this.toggleObscured,
      this.textInputType,
      this.regExp,
      this.maxLength,
      this.onTab,
      this.onChange,
      this.suffixIcon,
      this.onFieldSubmitted,
      this.textInputAction,
      this.suffixCallBack});

  final TextEditingController? controller;
  final String? hintText, helpText, labelText;
  final String? prefixIcon, suffixIcon;
  final bool? suffix;
  final bool? isPassword, enabled, readOnly, isDense;
  final Color? borderColor, focusBorderColor, underLineColor;
  final Color? textColor, hintColor, labelColor;
  final VoidCallback? toggleObscured, suffixCallBack;
  final TextInputType? textInputType;
  final RegExp? regExp;
  final TextInputAction? textInputAction;
  final VoidCallback? onTab;
  final int? maxLength;
  final ValueChanged<String>? onChange, onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: TextFormField(
        onChanged: onChange,
        onTap: onTab,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        maxLength: maxLength,
        inputFormatters: <TextInputFormatter>[
          if (textInputType != null && textInputType == TextInputType.numberWithOptions(signed: true))
            FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: textInputType ?? TextInputType.text,
        readOnly: readOnly ?? false,
        obscureText: isPassword ?? false,
        textInputAction: textInputAction,
        style: TextStyle(color: textColor ?? Colors.white, fontSize: fontSize - 1.sp),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10.r),
          isDense: isDense,
          counterStyle: TextStyle(color: hintColor ?? MyColors.greyTextColor, fontSize: fontSize - 3.sp),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: underLineColor ?? MyColors.thirdDividerColor)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: underLineColor ?? MyColors.thirdDividerColor)),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: underLineColor ?? MyColors.thirdDividerColor)),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: underLineColor ?? MyColors.thirdDividerColor)),
          hintText: hintText ?? '',
          hintStyle: TextStyle(color: hintColor ?? MyColors.greyThreeColor, fontSize: fontSize - 1.sp),
          helperText: helpText ?? '',
          prefixIcon: null == prefixIcon
              ? null
              : Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 4.w),
                  child: Image.asset(
                    prefixIcon!,
                    fit: BoxFit.scaleDown,
                    height: 13.sp,
                    width: 13.sp,
                  ),
                ),
          suffix: null == suffix
              ? null
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: GestureDetector(
                    onTap: toggleObscured,
                    child: Icon(
                      isPassword ?? false ? Icons.visibility_rounded : Icons.visibility_off_rounded,
                      size: 18.w,
                      color: MyColors.greyTextColor,
                    ),
                  ),
                ),
          suffixIcon: null == suffixIcon
              ? null
              : controller != null && controller!.text.trim().isNotEmpty
                  ? GestureDetector(
                      onTap: suffixCallBack,
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
                  : const SizedBox(),
          enabled: enabled ?? true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          labelStyle: MyFonts.regularFont.copyWith(
              color: labelColor ?? MyColors.greyTextColor,
              fontSize: fontSize - 4.sp
          ),
        ),
      ),
    );
  }
}
