import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'courses_events.dart';
import 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvents, CoursesState> {

  CoursesBloc() : super(CoursesState.initial()) {
    on<ChangeCourseTypeIndex>((event, emit) {
      emit(state.rebuild((b) => b
        ..isItemsSuccess = false
        ..isCategoriesSuccess = false
        ..successMessage = ""
        ..errorMessage = ""
        ..selectedCourseTypeIndex = event.selectedCourseTypeIndex));
    });

  }

  void onChangeCourseTypeIndex({required int selectedCourseTypeIndex}) {
    add(ChangeCourseTypeIndex(selectedCourseTypeIndex: selectedCourseTypeIndex));
  }

}
