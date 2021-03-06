// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDataUninitialized extends UserDataUninitialized {
  factory _$UserDataUninitialized(
          [void updates(UserDataUninitializedBuilder b)]) =>
      (new UserDataUninitializedBuilder()..update(updates)).build();

  _$UserDataUninitialized._() : super._();

  @override
  UserDataUninitialized rebuild(void updates(UserDataUninitializedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataUninitializedBuilder toBuilder() =>
      new UserDataUninitializedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataUninitialized;
  }

  @override
  int get hashCode {
    return 252898823;
  }
}

class UserDataUninitializedBuilder
    implements Builder<UserDataUninitialized, UserDataUninitializedBuilder> {
  _$UserDataUninitialized _$v;

  UserDataUninitializedBuilder();

  @override
  void replace(UserDataUninitialized other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserDataUninitialized;
  }

  @override
  void update(void updates(UserDataUninitializedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDataUninitialized build() {
    final _$result = _$v ?? new _$UserDataUninitialized._();
    replace(_$result);
    return _$result;
  }
}

class _$UserDataLoaded extends UserDataLoaded {
  @override
  final UserData userData;

  factory _$UserDataLoaded([void updates(UserDataLoadedBuilder b)]) =>
      (new UserDataLoadedBuilder()..update(updates)).build();

  _$UserDataLoaded._({this.userData}) : super._() {
    if (userData == null) {
      throw new BuiltValueNullFieldError('UserDataLoaded', 'userData');
    }
  }

  @override
  UserDataLoaded rebuild(void updates(UserDataLoadedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataLoadedBuilder toBuilder() =>
      new UserDataLoadedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataLoaded && userData == other.userData;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserDataLoaded')
          ..add('userData', userData))
        .toString();
  }
}

class UserDataLoadedBuilder
    implements Builder<UserDataLoaded, UserDataLoadedBuilder> {
  _$UserDataLoaded _$v;

  UserDataBuilder _userData;
  UserDataBuilder get userData => _$this._userData ??= new UserDataBuilder();
  set userData(UserDataBuilder userData) => _$this._userData = userData;

  UserDataLoadedBuilder();

  UserDataLoadedBuilder get _$this {
    if (_$v != null) {
      _userData = _$v.userData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDataLoaded other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserDataLoaded;
  }

  @override
  void update(void updates(UserDataLoadedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDataLoaded build() {
    _$UserDataLoaded _$result;
    try {
      _$result = _$v ?? new _$UserDataLoaded._(userData: userData.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userData';
        userData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserDataLoaded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
