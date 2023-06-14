// ignore_for_file: depend_on_referenced_packages

import 'package:built_value/built_value.dart';





part 'chat_state.g.dart';

abstract class ChatState implements Built<ChatState, ChatStateBuilder> {
  String get filePath;

  bool get isLoading;

  bool get isSuccess;

  String get errorMessage;

  String get successMessage;
  ChatState._();

  factory ChatState([Function(ChatStateBuilder b) updates]) = _$ChatState;

  factory ChatState.initial() {
    return ChatState((b) => b
      ..filePath = ''
      ..isLoading = false
      ..errorMessage = ""
      ..successMessage = ""
      ..isSuccess = false
    );
  }
}
