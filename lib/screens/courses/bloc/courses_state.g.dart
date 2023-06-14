// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoursesState extends CoursesState {
  @override
  final int selectedCourseTypeIndex;
  @override
  final bool isLoading;
  @override
  final bool isPaginate;
  @override
  final bool isCategoriesSuccess;
  @override
  final bool isItemsSuccess;
  @override
  final String errorMessage;
  @override
  final String successMessage;

  factory _$CoursesState([void Function(CoursesStateBuilder)? updates]) =>
      (new CoursesStateBuilder()..update(updates))._build();

  _$CoursesState._(
      {required this.selectedCourseTypeIndex,
      required this.isLoading,
      required this.isPaginate,
      required this.isCategoriesSuccess,
      required this.isItemsSuccess,
      required this.errorMessage,
      required this.successMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        selectedCourseTypeIndex, r'CoursesState', 'selectedCourseTypeIndex');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'CoursesState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isPaginate, r'CoursesState', 'isPaginate');
    BuiltValueNullFieldError.checkNotNull(
        isCategoriesSuccess, r'CoursesState', 'isCategoriesSuccess');
    BuiltValueNullFieldError.checkNotNull(
        isItemsSuccess, r'CoursesState', 'isItemsSuccess');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'CoursesState', 'errorMessage');
    BuiltValueNullFieldError.checkNotNull(
        successMessage, r'CoursesState', 'successMessage');
  }

  @override
  CoursesState rebuild(void Function(CoursesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoursesStateBuilder toBuilder() => new CoursesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoursesState &&
        selectedCourseTypeIndex == other.selectedCourseTypeIndex &&
        isLoading == other.isLoading &&
        isPaginate == other.isPaginate &&
        isCategoriesSuccess == other.isCategoriesSuccess &&
        isItemsSuccess == other.isItemsSuccess &&
        errorMessage == other.errorMessage &&
        successMessage == other.successMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedCourseTypeIndex.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isPaginate.hashCode);
    _$hash = $jc(_$hash, isCategoriesSuccess.hashCode);
    _$hash = $jc(_$hash, isItemsSuccess.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, successMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoursesState')
          ..add('selectedCourseTypeIndex', selectedCourseTypeIndex)
          ..add('isLoading', isLoading)
          ..add('isPaginate', isPaginate)
          ..add('isCategoriesSuccess', isCategoriesSuccess)
          ..add('isItemsSuccess', isItemsSuccess)
          ..add('errorMessage', errorMessage)
          ..add('successMessage', successMessage))
        .toString();
  }
}

class CoursesStateBuilder
    implements Builder<CoursesState, CoursesStateBuilder> {
  _$CoursesState? _$v;

  int? _selectedCourseTypeIndex;
  int? get selectedCourseTypeIndex => _$this._selectedCourseTypeIndex;
  set selectedCourseTypeIndex(int? selectedCourseTypeIndex) =>
      _$this._selectedCourseTypeIndex = selectedCourseTypeIndex;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isPaginate;
  bool? get isPaginate => _$this._isPaginate;
  set isPaginate(bool? isPaginate) => _$this._isPaginate = isPaginate;

  bool? _isCategoriesSuccess;
  bool? get isCategoriesSuccess => _$this._isCategoriesSuccess;
  set isCategoriesSuccess(bool? isCategoriesSuccess) =>
      _$this._isCategoriesSuccess = isCategoriesSuccess;

  bool? _isItemsSuccess;
  bool? get isItemsSuccess => _$this._isItemsSuccess;
  set isItemsSuccess(bool? isItemsSuccess) =>
      _$this._isItemsSuccess = isItemsSuccess;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _successMessage;
  String? get successMessage => _$this._successMessage;
  set successMessage(String? successMessage) =>
      _$this._successMessage = successMessage;

  CoursesStateBuilder();

  CoursesStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedCourseTypeIndex = $v.selectedCourseTypeIndex;
      _isLoading = $v.isLoading;
      _isPaginate = $v.isPaginate;
      _isCategoriesSuccess = $v.isCategoriesSuccess;
      _isItemsSuccess = $v.isItemsSuccess;
      _errorMessage = $v.errorMessage;
      _successMessage = $v.successMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoursesState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoursesState;
  }

  @override
  void update(void Function(CoursesStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoursesState build() => _build();

  _$CoursesState _build() {
    final _$result = _$v ??
        new _$CoursesState._(
            selectedCourseTypeIndex: BuiltValueNullFieldError.checkNotNull(
                selectedCourseTypeIndex,
                r'CoursesState',
                'selectedCourseTypeIndex'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'CoursesState', 'isLoading'),
            isPaginate: BuiltValueNullFieldError.checkNotNull(
                isPaginate, r'CoursesState', 'isPaginate'),
            isCategoriesSuccess: BuiltValueNullFieldError.checkNotNull(
                isCategoriesSuccess, r'CoursesState', 'isCategoriesSuccess'),
            isItemsSuccess: BuiltValueNullFieldError.checkNotNull(
                isItemsSuccess, r'CoursesState', 'isItemsSuccess'),
            errorMessage: BuiltValueNullFieldError.checkNotNull(
                errorMessage, r'CoursesState', 'errorMessage'),
            successMessage: BuiltValueNullFieldError.checkNotNull(
                successMessage, r'CoursesState', 'successMessage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
