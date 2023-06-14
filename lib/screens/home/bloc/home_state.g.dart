// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final int currentIndex;
  @override
  final bool isSuccess;
  @override
  final bool isPaginate;
  @override
  final bool isLoading;
  @override
  final String errorMessage;

  factory _$HomeState([void Function(HomeStateBuilder)? updates]) =>
      (new HomeStateBuilder()..update(updates))._build();

  _$HomeState._(
      {required this.currentIndex,
      required this.isSuccess,
      required this.isPaginate,
      required this.isLoading,
      required this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentIndex, r'HomeState', 'currentIndex');
    BuiltValueNullFieldError.checkNotNull(isSuccess, r'HomeState', 'isSuccess');
    BuiltValueNullFieldError.checkNotNull(
        isPaginate, r'HomeState', 'isPaginate');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'HomeState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'HomeState', 'errorMessage');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        currentIndex == other.currentIndex &&
        isSuccess == other.isSuccess &&
        isPaginate == other.isPaginate &&
        isLoading == other.isLoading &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentIndex.hashCode);
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, isPaginate.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeState')
          ..add('currentIndex', currentIndex)
          ..add('isSuccess', isSuccess)
          ..add('isPaginate', isPaginate)
          ..add('isLoading', isLoading)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState? _$v;

  int? _currentIndex;
  int? get currentIndex => _$this._currentIndex;
  set currentIndex(int? currentIndex) => _$this._currentIndex = currentIndex;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  bool? _isPaginate;
  bool? get isPaginate => _$this._isPaginate;
  set isPaginate(bool? isPaginate) => _$this._isPaginate = isPaginate;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentIndex = $v.currentIndex;
      _isSuccess = $v.isSuccess;
      _isPaginate = $v.isPaginate;
      _isLoading = $v.isLoading;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeState build() => _build();

  _$HomeState _build() {
    final _$result = _$v ??
        new _$HomeState._(
            currentIndex: BuiltValueNullFieldError.checkNotNull(
                currentIndex, r'HomeState', 'currentIndex'),
            isSuccess: BuiltValueNullFieldError.checkNotNull(
                isSuccess, r'HomeState', 'isSuccess'),
            isPaginate: BuiltValueNullFieldError.checkNotNull(
                isPaginate, r'HomeState', 'isPaginate'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'HomeState', 'isLoading'),
            errorMessage: BuiltValueNullFieldError.checkNotNull(
                errorMessage, r'HomeState', 'errorMessage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
