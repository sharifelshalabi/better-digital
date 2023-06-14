import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/screens/projects/widgets/project_list.dart';

import '../../../widgets/customize_app_bar3.dart';


class SeeMoreProject extends StatefulWidget {
  const SeeMoreProject({Key? key}) : super(key: key);

  @override
  State<SeeMoreProject> createState() => _SeeMoreProjectState();
}

class _SeeMoreProjectState extends State<SeeMoreProject> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background_image.png",
            width: 1.sw,
            height: 1.sh,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              CustomizeAppBar3(
                title: "",
                hasLeading: true, hasTrailing: false,
              ),
              SizedBox(height: 20.h,),
              Expanded(child: ProjectList())
            ],
          ),
        ],
      ),
    );
  }
}
