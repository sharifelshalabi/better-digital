import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/theme_constant.dart';
import '../../globals.dart';
import '../../widgets/customize_app_bar3.dart';
import '../../widgets/customize_dropdown.dart';
import '../../widgets/customize_text_form_field_widget.dart';
import '../../widgets/text_form_field_widget.dart';

class RequestProjectPage extends StatefulWidget {
  const RequestProjectPage({Key? key}) : super(key: key);

  @override
  _RequestProjectPageState createState() => _RequestProjectPageState();
}

class _RequestProjectPageState extends State<RequestProjectPage> {


  TextEditingController descriptionEditingController = TextEditingController(text: "");

  final List<String> projectType = [
    'e-commerce',
    'e-learning',
    'delivery boy',
  ];

  String? selectedValue;

  @override
  void dispose() {
    descriptionEditingController.dispose();
    super.dispose();
  }

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
                title: "Request new project",
                hasLeading: true, hasTrailing: false,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 40.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: CustomizeDropdown(
                        hintTitle: selectedValue ?? "Select project type",
                        onSaved: (value) {

                        },
                        items: projectType
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                              item,
                              style: MyFonts.regularFont.copyWith(
                                  fontSize: fontSize - 3.sp,
                                  color: Theme.of(context).colorScheme.primary
                              )
                          ),
                        ))
                            .toList(),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.r),
                      child: TextFormFieldWidget(
                        textInputAction: TextInputAction.done,
                        controller: descriptionEditingController,
                        // focusNode: emailSignInNode,
                        textInputType: TextInputType.name,
                        maxLines: 8,
                        textColor: MyColors.whiteTwoColor,
                        focusBorderColor: Theme.of(context).colorScheme.primary,
                        hintText: "Tell us about your project".tr(),
                        enabledBorder: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(height: 50.h,),
                    Container(
                      width: 1.sw,
                      margin: EdgeInsets.symmetric(horizontal: 100.r),
                      padding: EdgeInsets.symmetric(vertical: 15.r),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(8.r)
                      ),
                      child: Text("Submit".tr(),
                        textAlign: TextAlign.center,
                        style: MyFonts.regularFont.copyWith(
                            fontSize: fontSize - 2.sp,
                            color: MyColors.white
                        ),
                      ),
                    ),
                    SizedBox(height: 60.h,),
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
