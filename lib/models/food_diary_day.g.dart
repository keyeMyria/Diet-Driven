// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_diary_day.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodDiaryDay> _$foodDiaryDaySerializer =
    new _$FoodDiaryDaySerializer();

class _$FoodDiaryDaySerializer implements StructuredSerializer<FoodDiaryDay> {
  @override
  final Iterable<Type> types = const [FoodDiaryDay, _$FoodDiaryDay];
  @override
  final String wireName = 'FoodDiaryDay';

  @override
  Iterable serialize(Serializers serializers, FoodDiaryDay object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'foodRecords',
      serializers.serialize(object.foodRecords,
          specifiedType:
              const FullType(BuiltList, const [const FullType(FoodRecord)])),
    ];

    return result;
  }

  @override
  FoodDiaryDay deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodDiaryDayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'foodRecords':
          result.foodRecords.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(FoodRecord)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FoodDiaryDay extends FoodDiaryDay {
  @override
  final BuiltList<FoodRecord> foodRecords;

  factory _$FoodDiaryDay([void updates(FoodDiaryDayBuilder b)]) =>
      (new FoodDiaryDayBuilder()..update(updates)).build();

  _$FoodDiaryDay._({this.foodRecords}) : super._() {
    if (foodRecords == null) {
      throw new BuiltValueNullFieldError('FoodDiaryDay', 'foodRecords');
    }
  }

  @override
  FoodDiaryDay rebuild(void updates(FoodDiaryDayBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodDiaryDayBuilder toBuilder() => new FoodDiaryDayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodDiaryDay && foodRecords == other.foodRecords;
  }

  @override
  int get hashCode {
    return $jf($jc(0, foodRecords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodDiaryDay')
          ..add('foodRecords', foodRecords))
        .toString();
  }
}

class FoodDiaryDayBuilder
    implements Builder<FoodDiaryDay, FoodDiaryDayBuilder> {
  _$FoodDiaryDay _$v;

  ListBuilder<FoodRecord> _foodRecords;
  ListBuilder<FoodRecord> get foodRecords =>
      _$this._foodRecords ??= new ListBuilder<FoodRecord>();
  set foodRecords(ListBuilder<FoodRecord> foodRecords) =>
      _$this._foodRecords = foodRecords;

  FoodDiaryDayBuilder();

  FoodDiaryDayBuilder get _$this {
    if (_$v != null) {
      _foodRecords = _$v.foodRecords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodDiaryDay other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FoodDiaryDay;
  }

  @override
  void update(void updates(FoodDiaryDayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodDiaryDay build() {
    _$FoodDiaryDay _$result;
    try {
      _$result = _$v ?? new _$FoodDiaryDay._(foodRecords: foodRecords.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'foodRecords';
        foodRecords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FoodDiaryDay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
