import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_events.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvents, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<ChangeTheme>((event, emit) {
      emit(state.rebuild((b) => b
        ..isDark = event.isDark
        ..isThemeChanged = true));
    });
    on<ChangeLang>((event, emit) {
      emit(state.rebuild((b) => b
        ..isLangChanged = true
        ..lang = event.lang));
    });
    on<ChangeNavBarIndex>((event, emit) {
      emit(state.rebuild((b) => b..selectedNavBarIndex = event.index));
    });
  }
  void onChangeTheme(bool isDark) {
    add(ChangeTheme(isDark: isDark));
  }
  void onChangeNavBarIndex(int index) {
    add(ChangeNavBarIndex(index: index));
  }

  void onChangeLang(String lang) {
    add(ChangeLang(
      lang: lang,
    ));
  }
}
