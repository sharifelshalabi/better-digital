import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_events.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvents, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<ChangePagesIndex>((event, emit) async {
      emit(state.rebuild((b) => b..currentIndex = event.index));
    });
  }

  void onChangePagesIndex({required int index}) {
    add(ChangePagesIndex(index: index));
  }
}
