import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/theme_constant.dart';
import '../globals.dart';


class TextFormFieldWidget extends StatelessWidget {
  //
  const TextFormFieldWidget(
      {super.key,
      this.controller,
      this.hintText,
      this.hintColor,
      this.helpText,
      this.prefixIcon,
      this.suffix,
      this.enabledBorder,
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
      this.maxLines,
      this.validator,
      this.onChange,
      this.suffixIcon,
      this.onFieldSubmitted,
      this.textInputAction,
      this.suffixCallBack});

  final TextEditingController? controller;
  final String? hintText, helpText, labelText;
  final String? Function(String?)? validator;
  final String? prefixIcon;
  final IconData?  suffixIcon;
  final bool? suffix;
  final bool? isPassword, enabled, readOnly, isDense;
  final Color? borderColor, focusBorderColor , enabledBorder;
  final Color? textColor, hintColor, labelColor;
  final VoidCallback? toggleObscured, suffixCallBack;
  final TextInputType? textInputType;
  final RegExp? regExp;
  final TextInputAction? textInputAction;
  final VoidCallback? onTab;
  final int? maxLength;
  final int? maxLines;
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
        maxLines: maxLines,
        inputFormatters: <TextInputFormatter>[
          if (textInputType != null && textInputType == TextInputType.numberWithOptions(signed: true))
            FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: textInputType ?? TextInputType.text,
        readOnly: readOnly ?? false,
        obscureText: isPassword ?? false,
        textInputAction: textInputAction,
        validator:validator,
        style: TextStyle(color: textColor ?? Colors.black, fontSize: fontSize - 2.sp),
        decoration: InputDecoration(
          fillColor: isDark ? MyColors.blackOpacity : MyColors.white,
          filled: true,
          isDense: isDense,
          errorStyle: MyFonts.regularFont.copyWith(fontSize: fontSize - 2.sp, color: MyColors.errorColor),
          counterStyle: TextStyle(color: hintColor ?? MyColors.greyTextColor, fontSize: fontSize - 3.sp),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.w),
            borderSide: BorderSide(
              color: focusBorderColor ?? Colors.black,
              width: 1.0.h,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1), borderRadius: BorderRadius.circular(10.r)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.w),
            borderSide: BorderSide(
              color: enabledBorder ?? MyColors.greyTextColor,
              width: 1.0.h,
            ),
          ),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1), borderRadius: BorderRadius.circular(10.r)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0.w),
              borderSide: BorderSide(width: 1, color: borderColor ?? MyColors.greyTextColor)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0.w),
            borderSide: BorderSide(
              color: borderColor ?? MyColors.greyTextColor,
              width: 1.0.h,
            ),
          ),
          hintText: hintText ?? '',
          hintStyle: TextStyle(color: hintColor ?? MyColors.greyTextColor, fontSize: fontSize - 1.sp),
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
              ? null :
                    GestureDetector(
            onTap: suffixCallBack,
            child: Icon(
              suffixIcon,
              size: 18.sp,
              color:  MyColors.greyTwentyFiveColor
            ),
          ),
          enabled: enabled ?? true,
          labelText: labelText,
          labelStyle: TextStyle(
            color: labelColor ?? MyColors.greyTextColor,
          ),
        ),
      ),
    );
  }
}
