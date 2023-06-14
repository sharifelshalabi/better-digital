import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/theme_constant.dart';
import '../../../globals.dart';

class ProfileImageWidget extends StatelessWidget {
  double imageSize;
   ProfileImageWidget({Key? key,required this.imageSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.r),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.primary
          )
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 2,
                color: Theme.of(context).colorScheme.primary
            )
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(90.r),
          child: Image.asset('assets/images/account_icon.png',
            width: imageSize,
            height: imageSize,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
