import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/chat_remote.dart';
import 'chat_events.dart';
import 'chat_state.dart';


class ChatBloc extends Bloc<ChatEvents, ChatState> {

  ChatRemoteDataSource chatRemoteDataSource;

  ChatBloc({
    required this.chatRemoteDataSource
}) : super(ChatState.initial()) {
    on<DownloadFile>((event, emit) async {
      emit(state.rebuild((b) => b
          ..isSuccess = false
          ..successMessage = ''
          ..filePath = ''
        ..errorMessage = ""
        ..isLoading = true));
      final result = await chatRemoteDataSource.download(url: event.filePath);

      return result.fold((l) async {
        emit(state.rebuild((b) => b
          ..isLoading = false
          ..isSuccess = false
          ..successMessage = ''
          ..errorMessage = l
        ));
      }, (r) async {
        emit(state.rebuild((b) => b
          ..isSuccess = true
          ..isLoading = false
          ..successMessage = ""
          ..errorMessage = ""
          ..filePath = r
        ));
      });
    });

  }

  void onDownloadFile({required String filePath}) {
    add(DownloadFile(filePath: filePath));
  }

}
