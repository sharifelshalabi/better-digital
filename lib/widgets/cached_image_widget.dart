import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CachedImageWidget extends StatelessWidget {
  String image;
  double? size;
   CachedImageWidget({Key? key,required this.image, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return image.isNotEmpty?
      CachedNetworkImage(
      imageUrl:  image,
      imageBuilder: (context, imageProvider) => Container(
        height: size,width: 1.sw,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
          ),
        ),
      ),
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) =>  Image.asset("assets/images/failed_image.png", height: size,width: 1.sw,),
    ):
    Image.asset("assets/images/failed_image.png", height: size,width: 1.sw,);
  }
}
