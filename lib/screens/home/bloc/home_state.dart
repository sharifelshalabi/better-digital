// ignore_for_file: depend_on_referenced_packages

import 'package:built_value/built_value.dart';




part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {


  int get currentIndex;

  bool get isSuccess;

  bool get isPaginate;

  bool get isLoading;

  String get errorMessage;
  HomeState._();

  factory HomeState([Function(HomeStateBuilder b) updates]) = _$HomeState;

  factory HomeState.initial() {
    return HomeState((b) => b
      ..isLoading = false
      ..isSuccess = false
      ..isPaginate = false
      ..errorMessage = ""
      ..currentIndex = 0
    );
  }
}
