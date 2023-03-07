// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_c_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionCRecord> _$questionCRecordSerializer =
    new _$QuestionCRecordSerializer();

class _$QuestionCRecordSerializer
    implements StructuredSerializer<QuestionCRecord> {
  @override
  final Iterable<Type> types = const [QuestionCRecord, _$QuestionCRecord];
  @override
  final String wireName = 'QuestionCRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuestionCRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.question;
    if (value != null) {
      result
        ..add('question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isTrue;
    if (value != null) {
      result
        ..add('is_true')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  QuestionCRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionCRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_true':
          result.isTrue = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$QuestionCRecord extends QuestionCRecord {
  @override
  final String? question;
  @override
  final bool? isTrue;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QuestionCRecord([void Function(QuestionCRecordBuilder)? updates]) =>
      (new QuestionCRecordBuilder()..update(updates))._build();

  _$QuestionCRecord._({this.question, this.isTrue, this.ffRef}) : super._();

  @override
  QuestionCRecord rebuild(void Function(QuestionCRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionCRecordBuilder toBuilder() =>
      new QuestionCRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionCRecord &&
        question == other.question &&
        isTrue == other.isTrue &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, question.hashCode), isTrue.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionCRecord')
          ..add('question', question)
          ..add('isTrue', isTrue)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QuestionCRecordBuilder
    implements Builder<QuestionCRecord, QuestionCRecordBuilder> {
  _$QuestionCRecord? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  bool? _isTrue;
  bool? get isTrue => _$this._isTrue;
  set isTrue(bool? isTrue) => _$this._isTrue = isTrue;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QuestionCRecordBuilder() {
    QuestionCRecord._initializeBuilder(this);
  }

  QuestionCRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _isTrue = $v.isTrue;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionCRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionCRecord;
  }

  @override
  void update(void Function(QuestionCRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionCRecord build() => _build();

  _$QuestionCRecord _build() {
    final _$result = _$v ??
        new _$QuestionCRecord._(
            question: question, isTrue: isTrue, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
