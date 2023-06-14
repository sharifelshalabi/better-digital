import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_manger/constants/theme_constant.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchWidget1 extends StatefulWidget {
  int initialLabelIndex;
  int totalSwitches;
  double minWidth;
  double minHeight;
  double fontSize;
  List<String> labels;
  void Function(int? value) onToggle;

  ToggleSwitchWidget1({
    Key? key,
    required this.initialLabelIndex,
    required this.labels,
    required this.onToggle,
    required this.minHeight,
    required this.totalSwitches,
    required this.fontSize,
    required this.minWidth,
  }) : super(key: key);

  @override
  _ToggleSwitchWidget1State createState() => _ToggleSwitchWidget1State();
}

class _ToggleSwitchWidget1State extends State<ToggleSwitchWidget1> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: widget.minWidth,
      minHeight: widget.minHeight,
      cornerRadius: 10.r,
      activeBgColor:  [Theme.of(context).colorScheme.primary],
      activeFgColor: Colors.white,
      inactiveBgColor: MyColors.white,
      inactiveFgColor: Theme.of(context).colorScheme.primary,
      initialLabelIndex: widget.initialLabelIndex,
      totalSwitches: widget.totalSwitches,
      fontSize: widget.fontSize,
      borderWidth: 1,
      borderColor: [Theme.of(context).colorScheme.primary],
      labels: widget.labels,
      radiusStyle: false,
      onToggle: widget.onToggle,
    );
  }
}
