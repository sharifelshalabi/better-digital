import 'package:flutter/material.dart';

import '../globals.dart';

class MyFonts {
  static TextStyle regularFont = TextStyle(
    color: isDark ? MyColors.white : Colors.black,
    fontWeight: FontWeight.w400,
    
    height: 1.2,
    fontSize: fontSize,
  );
  static TextStyle mediumFont = TextStyle(
    color: isDark ? MyColors.white : Colors.black,
    fontWeight: FontWeight.w500,
    
    height: 1.2,
    fontSize: fontSize,
  );
  static TextStyle semiBoldFont = TextStyle(
    color: isDark ? MyColors.white : Colors.black,
    fontWeight: FontWeight.w600,
    
    height: 1.2,
    fontSize: fontSize,
  );
  static TextStyle boldFont = TextStyle(
    color: isDark ? MyColors.white : Colors.black,
    fontWeight: FontWeight.w700,
    
    height: 1.2,
    fontSize: fontSize,
  );
}

class MyColors {
  static const Color errorColor = Color(0xffF26666);
  static const Color warningColor = Color(0xffFBBC05);
  static const Color successColor = Color(0xff3F845F);
  static Color primaryDarkColor = const Color(0xff356899);
  static Color primaryLightColor = const Color(0xff5386E4);
  static Color primaryMoreLightColor = const Color(0xff9DB2CE);
  static Color secondaryLightColor = const Color(0xffFCDAA8);
  static Color primaryBodyTextColor = const Color(0xff524B6B);
  static Color primaryHeaderTextColor = const Color(0xff150B3D);
  static Color primaryGoldColor = const Color(0xffC3912E);
  static Color iconColor = const Color(0xff000000).withOpacity(0.1);
  static Color greyTextColor = const Color(0xffB1B1B1);
  static Color greyButtonColor = const Color(0xffEDEDED);
  static Color darkGreyTextColor = const Color(0xff000000).withOpacity(0.5);
  static Color hintColor = const Color(0xffC5C5C5);
  static Color textFieldBackground = const Color(0xffFFFFFF);
  static Color greyOneColor = const Color(0xff333333);
  static Color primaryBackGround = const Color(0xff082672);
  static Color textFieldHintColor = const Color(0xffBDBDBD);
  static Color secondaryContainerColor = const Color(0xffCBC9D4);
  static Color twoHintColor = const Color(0xff8F9BB3);
  static Color fiveContainerColor = const Color(0xffCBCBCB);
  static Color fiveDividerColor = const Color(0xffE8E8E8);
  static Color imageBackGroundOne = const Color(0xffEBF1FF);
  static Color white = const Color(0xffFFFFFF);
  static Color whiteTwoColor = const Color(0xffF1F5F9);
  static Color black = const Color(0xff000000);
  static Color blackOpacity = const Color(0xff000000).withOpacity(0.2) ;
  static Color greyThreeColor = const Color(0xff828282);
  static Color greyFourColor = const Color(0xffBDBDBD);
  static Color greyFiveColor = const Color(0xffE0E0E0);
  static Color greySixColor = const Color(0xffF2F2F2);
  static Color orange = const Color(0xffDA9733);
  static Color twoOrange = const Color(0xffE27323);
  static Color secondaryTitleColor = const Color(0xff0D0D26);
  static Color thirdContainerColor = const Color(0xffF6F5FB);
  static Color fourthContainerColor = const Color(0xffFFFCF4);
  static Color containerDarkColor = const Color(0xff343a40);
  static Color dividerColor = const Color(0xffD9D9D9);
  static Color secondaryDividerColor = const Color(0xffCACBCE);
  static Color thirdDividerColor = const Color(0xff2C2C2E);
  static Color dialogTitleColor = const Color(0xff5D5C5D);
  static Color greySevenColor = const Color(0xff95969D);
  static Color greyEightColor = const Color(0xffDEE1E7);
  static Color greyNineColor = const Color(0xffAFB0B5);
  static Color searchCardColor = const Color(0xffEFEFF6);
  static Color searchSuggestionsTextColor = const Color(0xff7A7C85);
  static Color thirdLightColor = const Color(0xffFFF2DE);
  static Color greyTenColor = const Color(0xff494A50);
  static Color greyElevenColor = const Color(0xff585D69);
  static Color greyTwelveColor = const Color(0xff888C94);
  static Color greyThirteenColor = const Color(0xffF6F7FA);
  static Color greyFourteenColor = const Color(0xff9D9FA0);
  static Color greFifteenColor = const Color(0xffBEC0C7);
  static Color greSixteenColor = const Color(0xff888888);
  static Color greSeventeenColor = const Color(0xffCFCFCF);
  static Color greyEighteenColor = const Color(0xff584F4F);
  static Color greyNineteenColor = const Color(0xffB2B2B2);
  static Color greyTwentyColor = const Color(0xff9B9AA3);
  static Color greyTwentyOneColor = const Color(0xff7E8392);
  static Color greyTwentyTwoColor = const Color(0xff626161);
  static Color greyTwentyThreeColor = const Color(0xff7C7A7A);
  static Color greyTwentyFourColor = const Color(0xffD8D8D8);
  static Color greyTwentyFiveColor = const Color(0xff677294);
  static Color greyTwentySixColor = const Color(0xffA4A4A4);
  static Color greyTwentySevenColor = const Color(0xffC4C4C4);
  static Color greyTwentyEightColor = const Color(0xffEEEEEE);
  static Color selectedFilter = const Color(0xffFCA34D);
  static Color borderTextFiled = const Color(0xffD8DADC);
  static Color headerTextColor = const Color(0xff010E16);
  static Color firstBlueColor = const Color(0xff035176);
  static Color blackTwoColor = const Color(0xff282F3E);
  static Color blackThreeColor = const Color(0xff343A40);
  static Color blackFourColor = const Color(0xff303434);
  static Color blackFiveColor = const Color(0xff303030);
  static Color blackSixColor = const Color(0xff4F4F4F);
  static Color blackSevenColor = const Color(0xff484848);
  static Color blackEightColor = const Color(0xff303437);
  static Color primaryShadowColor = const Color(0xffACC8D3);
  static Color oneBlueColor = const Color(0xffF2F4F5);
  static Color oneTrialColor = const  Color(0xff44B09E);
  static Gradient primaryLinearGradient = const LinearGradient(
      colors:  [
        Color(0xff4D568F),
        Color(0xffCCECF9),
      ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
  );
  static Gradient secondaryLinearGradient =  LinearGradient(
      colors:  [
        Color(0xff000000).withOpacity(0.5),
        Color(0xffffffff).withOpacity(0.7),
      ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
  );
  static Gradient thirdLinearGradient =  LinearGradient(
      colors:  [
        Color(0xff44B09E),
        Color(0xffE0D2C7),
      ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight
  );
}
