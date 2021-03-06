// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthUninitialized extends AuthUninitialized {
  factory _$AuthUninitialized([void updates(AuthUninitializedBuilder b)]) =>
      (new AuthUninitializedBuilder()..update(updates)).build();

  _$AuthUninitialized._() : super._();

  @override
  AuthUninitialized rebuild(void updates(AuthUninitializedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthUninitializedBuilder toBuilder() =>
      new AuthUninitializedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthUninitialized;
  }

  @override
  int get hashCode {
    return 764423904;
  }
}

class AuthUninitializedBuilder
    implements Builder<AuthUninitialized, AuthUninitializedBuilder> {
  _$AuthUninitialized _$v;

  AuthUninitializedBuilder();

  @override
  void replace(AuthUninitialized other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthUninitialized;
  }

  @override
  void update(void updates(AuthUninitializedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthUninitialized build() {
    final _$result = _$v ?? new _$AuthUninitialized._();
    replace(_$result);
    return _$result;
  }
}

class _$AuthAuthenticated extends AuthAuthenticated {
  @override
  final FirebaseUser user;

  factory _$AuthAuthenticated([void updates(AuthAuthenticatedBuilder b)]) =>
      (new AuthAuthenticatedBuilder()..update(updates)).build();

  _$AuthAuthenticated._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('AuthAuthenticated', 'user');
    }
  }

  @override
  AuthAuthenticated rebuild(void updates(AuthAuthenticatedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthAuthenticatedBuilder toBuilder() =>
      new AuthAuthenticatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthAuthenticated && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthAuthenticated')..add('user', user))
        .toString();
  }
}

class AuthAuthenticatedBuilder
    implements Builder<AuthAuthenticated, AuthAuthenticatedBuilder> {
  _$AuthAuthenticated _$v;

  FirebaseUser _user;
  FirebaseUser get user => _$this._user;
  set user(FirebaseUser user) => _$this._user = user;

  AuthAuthenticatedBuilder();

  AuthAuthenticatedBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthAuthenticated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthAuthenticated;
  }

  @override
  void update(void updates(AuthAuthenticatedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthAuthenticated build() {
    final _$result = _$v ?? new _$AuthAuthenticated._(user: user);
    replace(_$result);
    return _$result;
  }
}

class _$AuthUnauthenticated extends AuthUnauthenticated {
  factory _$AuthUnauthenticated([void updates(AuthUnauthenticatedBuilder b)]) =>
      (new AuthUnauthenticatedBuilder()..update(updates)).build();

  _$AuthUnauthenticated._() : super._();

  @override
  AuthUnauthenticated rebuild(void updates(AuthUnauthenticatedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthUnauthenticatedBuilder toBuilder() =>
      new AuthUnauthenticatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthUnauthenticated;
  }

  @override
  int get hashCode {
    return 467607408;
  }
}

class AuthUnauthenticatedBuilder
    implements Builder<AuthUnauthenticated, AuthUnauthenticatedBuilder> {
  _$AuthUnauthenticated _$v;

  AuthUnauthenticatedBuilder();

  @override
  void replace(AuthUnauthenticated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthUnauthenticated;
  }

  @override
  void update(void updates(AuthUnauthenticatedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthUnauthenticated build() {
    final _$result = _$v ?? new _$AuthUnauthenticated._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
