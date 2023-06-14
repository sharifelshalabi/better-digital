import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../widgets/toggle_switch_widget.dart';
import 'widgets/current_requirements.dart';
import 'widgets/previous_requirements.dart';


class RequirementsPage extends StatefulWidget {
  bool isFromProject;
   RequirementsPage({Key? key,required this.isFromProject}) : super(key: key);

  @override
  _RequirementsPageState createState() => _RequirementsPageState();
}

class _RequirementsPageState extends State<RequirementsPage> {

  int initialLabelIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(!widget.isFromProject )
        SizedBox(height: 80.h,),
        Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.r),
            child: ToggleSwitchWidget(
              fontSize: 16.sp,
              minWidth: 200.w,
              minHeight: 50.w,
              totalSwitches: 2,
              initialLabelIndex: initialLabelIndex,
              labels: ["Previous".tr(),"Current".tr()],
              onToggle: (value) {
                initialLabelIndex = value!;
                setState(() {

                });
              },
            ),
          ),
        ),
        SizedBox(height: 50.h,),
        initialLabelIndex == 0 ?
        PreviousRequirements():
        CurrentRequirements()

      ],
    );
  }
}
