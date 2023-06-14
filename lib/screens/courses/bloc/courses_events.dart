import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class CoursesEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangeCourseTypeIndex extends CoursesEvents {
  final int selectedCourseTypeIndex;

  ChangeCourseTypeIndex({
    required this.selectedCourseTypeIndex,
  });
}

class GetCategories extends CoursesEvents {
  GetCategories();
}

class GetCoursesItems extends CoursesEvents {
  final int page;
  final int category_id;
  GetCoursesItems(
      {
     required this.page,
     required this.category_id,
      });
}
class AddRemoveFavorite extends CoursesEvents {
  final int id;
  AddRemoveFavorite({required this.id});
}

class AddToCart extends CoursesEvents {
  final int id;
  AddToCart({required this.id});
}