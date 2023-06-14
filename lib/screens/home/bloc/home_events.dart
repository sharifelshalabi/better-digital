import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class HomeEvents extends Equatable {
  @override
  List<Object> get props => [];
}


class GetHome extends HomeEvents {
  GetHome();
}

class AddRemoveFavorite extends HomeEvents {
  final int id;
  AddRemoveFavorite({required this.id});
}

class ChangePagesIndex extends HomeEvents {
  final int index;
  ChangePagesIndex({required this.index});
}

class GetMoreItems extends HomeEvents {
  final int page;
  GetMoreItems(
      {
        required this.page,
      });
}
