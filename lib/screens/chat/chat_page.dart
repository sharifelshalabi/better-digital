import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_file_plus/open_file_plus.dart';

import '../../injection.dart';
import '../../widgets/customize_app_bar1.dart';
import 'bloc/chat_bloc.dart';
import 'widgets/chat_text_field.dart';
import 'widgets/message_bubble/received_message/received_file_message_screen.dart';
import 'widgets/message_bubble/received_message/received_text_message_screen.dart';
import 'widgets/message_bubble/send_message/sent_file_message_screen.dart';
import 'widgets/message_bubble/send_message/sent_text_message_screen.dart';




class ChatPage extends StatefulWidget {
  final String title;
   ChatPage({Key? key,required this.title}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  TextEditingController textEditingController = TextEditingController(text: '');
  ScrollController scrollController = ScrollController();

  File file = File('');
  String fileName = '';

  List<Widget> messages = [
    SentTextMessageScreen(message: "Hello"),
    ReceivedTextMessageScreen(message: "Hello, I’m FitBot! 👋 I’m your personal sport assistant. How can I help you?"),
    SentTextMessageScreen(message: "I am great how are you doing"),
    ReceivedTextMessageScreen(message: "I am also fine"),
    SentTextMessageScreen(message: "Can we meet tomorrow? Can we meet tomorrow? Can we meet tomorrow? Can we meet tomorrow? "),
    ReceivedTextMessageScreen(message: "Yes, of course we will meet tomorrow"),
    SentTextMessageScreen(message: "Hello"),
    ReceivedTextMessageScreen(message: "Hello, I’m FitBot! 👋 I’m your personal sport assistant. How can I help you?"),
    SentTextMessageScreen(message: "I am great how are you doing"),
    ReceivedTextMessageScreen(message: "I am also fine"),
    SentTextMessageScreen(message: "Can we meet tomorrow? Can we meet tomorrow? Can we meet tomorrow? Can we meet tomorrow? "),
    ReceivedTextMessageScreen(message: "Yes, of course we will meet tomorrow"),
    ReceivedFileMessageScreen(message: "scsllassa2002.pdf",url: 'https://eyetrackingdigital.com/old/1.pdf',)
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background_image.png",
            fit: BoxFit.fill,
            height: 1.sh,
            width: 1.sw,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    CustomizeAppBar1(title: widget.title,hasLeading: true),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 1,
                        controller: scrollController,
                        reverse: true,
                        itemBuilder: (context, index) {
                          return Wrap(
                            children: messages,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ChatTextField(
                controller: textEditingController,
                onAttachmentTap: () async{
                  FilePickerResult? result = await FilePicker.platform.pickFiles();

                  if (result != null) {
                    File file = File(result.files.single.path ?? '');
                    String filePath = result.files.single.path ?? '';
                    fileName = result.files.single.name;
                    messages.add(
                      SentFileMessageScreen(
                          message: fileName,
                          url: filePath,
                        onTap: () {
                          OpenFile.open(filePath,);
                        },
                      ),
                    );
                    scrollController.animateTo(
                        scrollController.position.minScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease);
                    setState(() {

                    });

                  } else {
                  }
                },
                onTap: () {
                if(textEditingController.text.isNotEmpty)  {
                    messages.add(
                      SentTextMessageScreen(
                          message: textEditingController.text),
                    );
                    textEditingController.clear();
                    scrollController.animateTo(
                        scrollController.position.minScrollExtent,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease);
                    setState(() {

                    });
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
