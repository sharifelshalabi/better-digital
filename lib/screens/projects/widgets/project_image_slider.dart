import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/cached_image_widget.dart';
import '../../../widgets/image_viewer_widget.dart';

class ProjectImageSlider extends StatelessWidget {
  List<String> imgList;
  ProjectImageSlider({Key? key, required this.imgList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.r,
      child: ListView.builder(
        itemCount: imgList.length,
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ImageViewerWidget(image: imgList[index]),));
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 6.r),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      imgList[index],
                      width: 120.r,
                      height: 100.r,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    )
                    // CachedImageWidget(image: e,size: 160.h,)
                    )),
          );
        },
      ),
    );
  }
}
