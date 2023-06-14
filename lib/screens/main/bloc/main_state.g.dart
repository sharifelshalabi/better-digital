// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MainState extends MainState {
  @override
  final bool isDark;
  @override
  final String lang;
  @override
  final bool isThemeChanged;
  @override
  final bool isLangChanged;
  @override
  final bool isOrientation;
  @override
  final int selectedNavBarIndex;

  factory _$MainState([void Function(MainStateBuilder)? updates]) =>
      (new MainStateBuilder()..update(updates))._build();

  _$MainState._(
      {required this.isDark,
      required this.lang,
      required this.isThemeChanged,
      required this.isLangChanged,
      required this.isOrientation,
      required this.selectedNavBarIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isDark, r'MainState', 'isDark');
    BuiltValueNullFieldError.checkNotNull(lang, r'MainState', 'lang');
    BuiltValueNullFieldError.checkNotNull(
        isThemeChanged, r'MainState', 'isThemeChanged');
    BuiltValueNullFieldError.checkNotNull(
        isLangChanged, r'MainState', 'isLangChanged');
    BuiltValueNullFieldError.checkNotNull(
        isOrientation, r'MainState', 'isOrientation');
    BuiltValueNullFieldError.checkNotNull(
        selectedNavBarIndex, r'MainState', 'selectedNavBarIndex');
  }

  @override
  MainState rebuild(void Function(MainStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainStateBuilder toBuilder() => new MainStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainState &&
        isDark == other.isDark &&
        lang == other.lang &&
        isThemeChanged == other.isThemeChanged &&
        isLangChanged == other.isLangChanged &&
        isOrientation == other.isOrientation &&
        selectedNavBarIndex == other.selectedNavBarIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isDark.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, isThemeChanged.hashCode);
    _$hash = $jc(_$hash, isLangChanged.hashCode);
    _$hash = $jc(_$hash, isOrientation.hashCode);
    _$hash = $jc(_$hash, selectedNavBarIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainState')
          ..add('isDark', isDark)
          ..add('lang', lang)
          ..add('isThemeChanged', isThemeChanged)
          ..add('isLangChanged', isLangChanged)
          ..add('isOrientation', isOrientation)
          ..add('selectedNavBarIndex', selectedNavBarIndex))
        .toString();
  }
}

class MainStateBuilder implements Builder<MainState, MainStateBuilder> {
  _$MainState? _$v;

  bool? _isDark;
  bool? get isDark => _$this._isDark;
  set isDark(bool? isDark) => _$this._isDark = isDark;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  bool? _isThemeChanged;
  bool? get isThemeChanged => _$this._isThemeChanged;
  set isThemeChanged(bool? isThemeChanged) =>
      _$this._isThemeChanged = isThemeChanged;

  bool? _isLangChanged;
  bool? get isLangChanged => _$this._isLangChanged;
  set isLangChanged(bool? isLangChanged) =>
      _$this._isLangChanged = isLangChanged;

  bool? _isOrientation;
  bool? get isOrientation => _$this._isOrientation;
  set isOrientation(bool? isOrientation) =>
      _$this._isOrientation = isOrientation;

  int? _selectedNavBarIndex;
  int? get selectedNavBarIndex => _$this._selectedNavBarIndex;
  set selectedNavBarIndex(int? selectedNavBarIndex) =>
      _$this._selectedNavBarIndex = selectedNavBarIndex;

  MainStateBuilder();

  MainStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isDark = $v.isDark;
      _lang = $v.lang;
      _isThemeChanged = $v.isThemeChanged;
      _isLangChanged = $v.isLangChanged;
      _isOrientation = $v.isOrientation;
      _selectedNavBarIndex = $v.selectedNavBarIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainState;
  }

  @override
  void update(void Function(MainStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainState build() => _build();

  _$MainState _build() {
    final _$result = _$v ??
        new _$MainState._(
            isDark: BuiltValueNullFieldError.checkNotNull(
                isDark, r'MainState', 'isDark'),
            lang: BuiltValueNullFieldError.checkNotNull(
                lang, r'MainState', 'lang'),
            isThemeChanged: BuiltValueNullFieldError.checkNotNull(
                isThemeChanged, r'MainState', 'isThemeChanged'),
            isLangChanged: BuiltValueNullFieldError.checkNotNull(
                isLangChanged, r'MainState', 'isLangChanged'),
            isOrientation: BuiltValueNullFieldError.checkNotNull(
                isOrientation, r'MainState', 'isOrientation'),
            selectedNavBarIndex: BuiltValueNullFieldError.checkNotNull(
                selectedNavBarIndex, r'MainState', 'selectedNavBarIndex'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
