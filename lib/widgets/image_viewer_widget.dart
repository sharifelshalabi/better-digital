import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import 'customize_app_bar3.dart';


class ImageViewerWidget extends StatelessWidget {
  String image;
  ImageViewerWidget({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          PhotoView(
            imageProvider: AssetImage(image),
          ),
          CustomizeAppBar3(
            title: "",
            hasLeading: true, hasTrailing: false,
          ),
        ],
      ),
    );
  }
}

