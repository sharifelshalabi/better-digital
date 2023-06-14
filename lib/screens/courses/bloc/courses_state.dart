// ignore_for_file: depend_on_referenced_packages

import 'package:built_value/built_value.dart';





part 'courses_state.g.dart';

abstract class CoursesState implements Built<CoursesState, CoursesStateBuilder> {
  int get selectedCourseTypeIndex;

  bool get isLoading;

  bool get isPaginate;

  bool get isCategoriesSuccess;

  bool get isItemsSuccess;

  String get errorMessage;

  String get successMessage;
  CoursesState._();

  factory CoursesState([Function(CoursesStateBuilder b) updates]) = _$CoursesState;

  factory CoursesState.initial() {
    return CoursesState((b) => b
      ..selectedCourseTypeIndex = 0
      ..isLoading = false
      ..errorMessage = ""
      ..successMessage = ""
      ..isPaginate = false
      ..isCategoriesSuccess = false
      ..isItemsSuccess = false
    );
  }
}
