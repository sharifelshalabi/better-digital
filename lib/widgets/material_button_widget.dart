import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double width;
  final double height;
  final Color color;
  final double radius;
  final Future Function() onPress;
  const MaterialButtonWidget({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.width,
    required this.height,
    required this.color,
    required this.radius,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
      child: MaterialButton(
        onPressed: onPress,
        highlightElevation: 0,
        elevation: 0,
        color: Colors.transparent,
        child: Text(text.tr(), style: textStyle),
      ),
    );
  }
}
