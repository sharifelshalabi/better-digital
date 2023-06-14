// ignore_for_file: depend_on_referenced_packages

import 'package:built_value/built_value.dart';

part 'main_state.g.dart';

abstract class MainState implements Built<MainState, MainStateBuilder> {
  bool get isDark;
  String get lang;
  bool get isThemeChanged;
  bool get isLangChanged;
  bool get isOrientation;
  int get selectedNavBarIndex;
  MainState._();

  factory MainState([Function(MainStateBuilder b) updates]) = _$MainState;

  factory MainState.initial() {
    return MainState((b) => b
      ..isDark = false
      ..lang = "en"
      ..isThemeChanged = false
      ..selectedNavBarIndex = 2
      ..isOrientation = false
      ..isLangChanged = false);
  }
}
