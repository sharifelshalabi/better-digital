import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingBarWidget extends StatelessWidget {
  int itemCount;
  double rating;
   RatingBarWidget({Key? key,required this.rating, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, index) =>
      const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemCount: itemCount,
      itemSize: 18.r,
      direction: Axis.horizontal,
    );
  }
}
