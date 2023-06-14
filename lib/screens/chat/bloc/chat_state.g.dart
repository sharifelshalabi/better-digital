// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatState extends ChatState {
  @override
  final String filePath;
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final String errorMessage;
  @override
  final String successMessage;

  factory _$ChatState([void Function(ChatStateBuilder)? updates]) =>
      (new ChatStateBuilder()..update(updates))._build();

  _$ChatState._(
      {required this.filePath,
      required this.isLoading,
      required this.isSuccess,
      required this.errorMessage,
      required this.successMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(filePath, r'ChatState', 'filePath');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'ChatState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(isSuccess, r'ChatState', 'isSuccess');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'ChatState', 'errorMessage');
    BuiltValueNullFieldError.checkNotNull(
        successMessage, r'ChatState', 'successMessage');
  }

  @override
  ChatState rebuild(void Function(ChatStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatStateBuilder toBuilder() => new ChatStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatState &&
        filePath == other.filePath &&
        isLoading == other.isLoading &&
        isSuccess == other.isSuccess &&
        errorMessage == other.errorMessage &&
        successMessage == other.successMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filePath.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, successMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatState')
          ..add('filePath', filePath)
          ..add('isLoading', isLoading)
          ..add('isSuccess', isSuccess)
          ..add('errorMessage', errorMessage)
          ..add('successMessage', successMessage))
        .toString();
  }
}

class ChatStateBuilder implements Builder<ChatState, ChatStateBuilder> {
  _$ChatState? _$v;

  String? _filePath;
  String? get filePath => _$this._filePath;
  set filePath(String? filePath) => _$this._filePath = filePath;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _successMessage;
  String? get successMessage => _$this._successMessage;
  set successMessage(String? successMessage) =>
      _$this._successMessage = successMessage;

  ChatStateBuilder();

  ChatStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filePath = $v.filePath;
      _isLoading = $v.isLoading;
      _isSuccess = $v.isSuccess;
      _errorMessage = $v.errorMessage;
      _successMessage = $v.successMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatState;
  }

  @override
  void update(void Function(ChatStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatState build() => _build();

  _$ChatState _build() {
    final _$result = _$v ??
        new _$ChatState._(
            filePath: BuiltValueNullFieldError.checkNotNull(
                filePath, r'ChatState', 'filePath'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'ChatState', 'isLoading'),
            isSuccess: BuiltValueNullFieldError.checkNotNull(
                isSuccess, r'ChatState', 'isSuccess'),
            errorMessage: BuiltValueNullFieldError.checkNotNull(
                errorMessage, r'ChatState', 'errorMessage'),
            successMessage: BuiltValueNullFieldError.checkNotNull(
                successMessage, r'ChatState', 'successMessage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
