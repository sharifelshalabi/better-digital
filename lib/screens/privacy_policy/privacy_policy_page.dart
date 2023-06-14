import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../widgets/customize_app_bar3.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background_image.png",
            width: 1.sw,
            height: 1.sh,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomizeAppBar3(
                title: "Privacy Policy",
                hasLeading: true, hasTrailing: false,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 20.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 24.r),
                      child: Text("Empower others and make them more secure. We understood that the security needs and capabilities of entities are different , so we came up with different services that you can choose from the ones that fit you best. Our team continues to partnership with its clients to ensu re combating latest cyber threats and risks!Empower others and make them more secure. We understood that the security needs and capabilities of entities are different , so we came up with different services that you can choose from the ones that fit you best. Our team continues to partnership with its clients to ensu re combating latest cyber threats and risks!Empower others and make them more secure. We understood that the security needs and capabilities of entities are different , so we came up with different services that you can choose from the ones that fit you best. Our team continues to partnership with its clients to ensu re combating latest cyber threats and risks!",
                        style: MyFonts.mediumFont.copyWith(
                            fontSize: fontSize - 2.sp,
                          color: !isDark ? MyColors.greSixteenColor  : MyColors.thirdContainerColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
