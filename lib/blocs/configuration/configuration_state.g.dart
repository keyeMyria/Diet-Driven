// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationUninitialized extends ConfigurationUninitialized {
  factory _$ConfigurationUninitialized(
          [void updates(ConfigurationUninitializedBuilder b)]) =>
      (new ConfigurationUninitializedBuilder()..update(updates)).build();

  _$ConfigurationUninitialized._() : super._();

  @override
  ConfigurationUninitialized rebuild(
          void updates(ConfigurationUninitializedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationUninitializedBuilder toBuilder() =>
      new ConfigurationUninitializedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationUninitialized;
  }

  @override
  int get hashCode {
    return 787888127;
  }
}

class ConfigurationUninitializedBuilder
    implements
        Builder<ConfigurationUninitialized, ConfigurationUninitializedBuilder> {
  _$ConfigurationUninitialized _$v;

  ConfigurationUninitializedBuilder();

  @override
  void replace(ConfigurationUninitialized other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConfigurationUninitialized;
  }

  @override
  void update(void updates(ConfigurationUninitializedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfigurationUninitialized build() {
    final _$result = _$v ?? new _$ConfigurationUninitialized._();
    replace(_$result);
    return _$result;
  }
}

class _$ConfigurationLoaded extends ConfigurationLoaded {
  @override
  final RemoteConfiguration configuration;

  factory _$ConfigurationLoaded([void updates(ConfigurationLoadedBuilder b)]) =>
      (new ConfigurationLoadedBuilder()..update(updates)).build();

  _$ConfigurationLoaded._({this.configuration}) : super._() {
    if (configuration == null) {
      throw new BuiltValueNullFieldError(
          'ConfigurationLoaded', 'configuration');
    }
  }

  @override
  ConfigurationLoaded rebuild(void updates(ConfigurationLoadedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationLoadedBuilder toBuilder() =>
      new ConfigurationLoadedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationLoaded && configuration == other.configuration;
  }

  @override
  int get hashCode {
    return $jf($jc(0, configuration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConfigurationLoaded')
          ..add('configuration', configuration))
        .toString();
  }
}

class ConfigurationLoadedBuilder
    implements Builder<ConfigurationLoaded, ConfigurationLoadedBuilder> {
  _$ConfigurationLoaded _$v;

  RemoteConfigurationBuilder _configuration;
  RemoteConfigurationBuilder get configuration =>
      _$this._configuration ??= new RemoteConfigurationBuilder();
  set configuration(RemoteConfigurationBuilder configuration) =>
      _$this._configuration = configuration;

  ConfigurationLoadedBuilder();

  ConfigurationLoadedBuilder get _$this {
    if (_$v != null) {
      _configuration = _$v.configuration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigurationLoaded other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConfigurationLoaded;
  }

  @override
  void update(void updates(ConfigurationLoadedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfigurationLoaded build() {
    _$ConfigurationLoaded _$result;
    try {
      _$result = _$v ??
          new _$ConfigurationLoaded._(configuration: configuration.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'configuration';
        configuration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConfigurationLoaded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ConfigurationLoading extends ConfigurationLoading {
  factory _$ConfigurationLoading(
          [void updates(ConfigurationLoadingBuilder b)]) =>
      (new ConfigurationLoadingBuilder()..update(updates)).build();

  _$ConfigurationLoading._() : super._();

  @override
  ConfigurationLoading rebuild(void updates(ConfigurationLoadingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationLoadingBuilder toBuilder() =>
      new ConfigurationLoadingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationLoading;
  }

  @override
  int get hashCode {
    return 259598194;
  }
}

class ConfigurationLoadingBuilder
    implements Builder<ConfigurationLoading, ConfigurationLoadingBuilder> {
  _$ConfigurationLoading _$v;

  ConfigurationLoadingBuilder();

  @override
  void replace(ConfigurationLoading other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConfigurationLoading;
  }

  @override
  void update(void updates(ConfigurationLoadingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfigurationLoading build() {
    final _$result = _$v ?? new _$ConfigurationLoading._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
