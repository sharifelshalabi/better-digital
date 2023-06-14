import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class MainEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangeTheme extends MainEvents {
  final bool isDark;

  ChangeTheme({required this.isDark});
}

class ChangeNavBarIndex extends MainEvents {
  final int index;

  ChangeNavBarIndex({
    required this.index,
  });
}

class ChangeLang extends MainEvents {
  final String lang;

  ChangeLang({
    required this.lang,
  });
}
