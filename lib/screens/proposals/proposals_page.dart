import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/customize_app_bar3.dart';
import 'widgets/prposals_list.dart';


class ProposalsPage extends StatefulWidget {
  const ProposalsPage({Key? key}) : super(key: key);

  @override
  State<ProposalsPage> createState() => _ProposalsPageState();
}

class _ProposalsPageState extends State<ProposalsPage> {
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
                title: "",
                hasLeading: true, hasTrailing: false,
              ),
              SizedBox(height: 20.h,),
              Expanded(child: ProposalsList())
            ],
          ),
        ],
      ),
    );
  }
}
