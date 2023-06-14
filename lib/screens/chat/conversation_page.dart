import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/customize_app_bar3.dart';
import 'widgets/conversation_list.dart';


class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomizeAppBar3(
          title: "Messaging",
          hasLeading: false, hasTrailing: false,
        ),
        SizedBox(height: 40.h,),
        ConversationList(),
      ],
    );
  }
}
