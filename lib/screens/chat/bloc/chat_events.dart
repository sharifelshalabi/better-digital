import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class ChatEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class DownloadFile extends ChatEvents {
  final String filePath;

  DownloadFile({
    required this.filePath,
  });
}
