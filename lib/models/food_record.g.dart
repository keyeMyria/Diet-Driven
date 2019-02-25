// GENERATED CODE - DO NOT MODIFY BY HAND

part of food_record;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodRecord> _$foodRecordSerializer = new _$FoodRecordSerializer();

class _$FoodRecordSerializer implements StructuredSerializer<FoodRecord> {
  @override
  final Iterable<Type> types = const [FoodRecord, _$FoodRecord];
  @override
  final String wireName = 'FoodRecord';

  @override
  Iterable serialize(Serializers serializers, FoodRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(DateTime)),
      'foodName',
      serializers.serialize(object.foodName,
          specifiedType: const FullType(String)),
      'uncertainty',
      serializers.serialize(object.uncertainty,
          specifiedType: const FullType(Uncertainty)),
      'grams',
      serializers.serialize(object.grams,
          specifiedType: const FullType(double)),
    ];
    if (object.id != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.sodium != null) {
      result
        ..add('sodium')
        ..add(serializers.serialize(object.sodium,
            specifiedType: const FullType(double)));
    }

    return result;
  }

  @override
  FoodRecord deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'foodName':
          result.foodName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uncertainty':
          result.uncertainty = serializers.deserialize(value,
              specifiedType: const FullType(Uncertainty)) as Uncertainty;
          break;
        case 'grams':
          result.grams = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'sodium':
          result.sodium = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodRecord extends FoodRecord {
  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String foodName;
  @override
  final Uncertainty uncertainty;
  @override
  final double grams;
  @override
  final double sodium;

  factory _$FoodRecord([void updates(FoodRecordBuilder b)]) =>
      (new FoodRecordBuilder()..update(updates)).build();

  _$FoodRecord._(
      {this.id,
      this.timestamp,
      this.foodName,
      this.uncertainty,
      this.grams,
      this.sodium})
      : super._() {
    if (timestamp == null) {
      throw new BuiltValueNullFieldError('FoodRecord', 'timestamp');
    }
    if (foodName == null) {
      throw new BuiltValueNullFieldError('FoodRecord', 'foodName');
    }
    if (uncertainty == null) {
      throw new BuiltValueNullFieldError('FoodRecord', 'uncertainty');
    }
    if (grams == null) {
      throw new BuiltValueNullFieldError('FoodRecord', 'grams');
    }
  }

  @override
  FoodRecord rebuild(void updates(FoodRecordBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodRecordBuilder toBuilder() => new FoodRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodRecord &&
        timestamp == other.timestamp &&
        foodName == other.foodName &&
        uncertainty == other.uncertainty &&
        grams == other.grams &&
        sodium == other.sodium;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, timestamp.hashCode), foodName.hashCode),
                uncertainty.hashCode),
            grams.hashCode),
        sodium.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodRecord')
          ..add('id', id)
          ..add('timestamp', timestamp)
          ..add('foodName', foodName)
          ..add('uncertainty', uncertainty)
          ..add('grams', grams)
          ..add('sodium', sodium))
        .toString();
  }
}

class FoodRecordBuilder implements Builder<FoodRecord, FoodRecordBuilder> {
  _$FoodRecord _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DateTime _timestamp;
  DateTime get timestamp => _$this._timestamp;
  set timestamp(DateTime timestamp) => _$this._timestamp = timestamp;

  String _foodName;
  String get foodName => _$this._foodName;
  set foodName(String foodName) => _$this._foodName = foodName;

  Uncertainty _uncertainty;
  Uncertainty get uncertainty => _$this._uncertainty;
  set uncertainty(Uncertainty uncertainty) => _$this._uncertainty = uncertainty;

  double _grams;
  double get grams => _$this._grams;
  set grams(double grams) => _$this._grams = grams;

  double _sodium;
  double get sodium => _$this._sodium;
  set sodium(double sodium) => _$this._sodium = sodium;

  FoodRecordBuilder();

  FoodRecordBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _timestamp = _$v.timestamp;
      _foodName = _$v.foodName;
      _uncertainty = _$v.uncertainty;
      _grams = _$v.grams;
      _sodium = _$v.sodium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodRecord other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FoodRecord;
  }

  @override
  void update(void updates(FoodRecordBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodRecord build() {
    final _$result = _$v ??
        new _$FoodRecord._(
            id: id,
            timestamp: timestamp,
            foodName: foodName,
            uncertainty: uncertainty,
            grams: grams,
            sodium: sodium);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new