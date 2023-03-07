// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_set_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuizSetRecord> _$quizSetRecordSerializer =
    new _$QuizSetRecordSerializer();

class _$QuizSetRecordSerializer implements StructuredSerializer<QuizSetRecord> {
  @override
  final Iterable<Type> types = const [QuizSetRecord, _$QuizSetRecord];
  @override
  final String wireName = 'QuizSetRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuizSetRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.quizName;
    if (value != null) {
      result
        ..add('quiz_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalQuestions;
    if (value != null) {
      result
        ..add('total_questions')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quizDescription;
    if (value != null) {
      result
        ..add('quiz_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverPhoto;
    if (value != null) {
      result
        ..add('cover_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  QuizSetRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuizSetRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'quiz_name':
          result.quizName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_questions':
          result.totalQuestions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'quiz_description':
          result.quizDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cover_photo':
          result.coverPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$QuizSetRecord extends QuizSetRecord {
  @override
  final String? quizName;
  @override
  final int? duration;
  @override
  final int? totalQuestions;
  @override
  final String? quizDescription;
  @override
  final String? coverPhoto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QuizSetRecord([void Function(QuizSetRecordBuilder)? updates]) =>
      (new QuizSetRecordBuilder()..update(updates))._build();

  _$QuizSetRecord._(
      {this.quizName,
      this.duration,
      this.totalQuestions,
      this.quizDescription,
      this.coverPhoto,
      this.ffRef})
      : super._();

  @override
  QuizSetRecord rebuild(void Function(QuizSetRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizSetRecordBuilder toBuilder() => new QuizSetRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizSetRecord &&
        quizName == other.quizName &&
        duration == other.duration &&
        totalQuestions == other.totalQuestions &&
        quizDescription == other.quizDescription &&
        coverPhoto == other.coverPhoto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, quizName.hashCode), duration.hashCode),
                    totalQuestions.hashCode),
                quizDescription.hashCode),
            coverPhoto.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizSetRecord')
          ..add('quizName', quizName)
          ..add('duration', duration)
          ..add('totalQuestions', totalQuestions)
          ..add('quizDescription', quizDescription)
          ..add('coverPhoto', coverPhoto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QuizSetRecordBuilder
    implements Builder<QuizSetRecord, QuizSetRecordBuilder> {
  _$QuizSetRecord? _$v;

  String? _quizName;
  String? get quizName => _$this._quizName;
  set quizName(String? quizName) => _$this._quizName = quizName;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  int? _totalQuestions;
  int? get totalQuestions => _$this._totalQuestions;
  set totalQuestions(int? totalQuestions) =>
      _$this._totalQuestions = totalQuestions;

  String? _quizDescription;
  String? get quizDescription => _$this._quizDescription;
  set quizDescription(String? quizDescription) =>
      _$this._quizDescription = quizDescription;

  String? _coverPhoto;
  String? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(String? coverPhoto) => _$this._coverPhoto = coverPhoto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QuizSetRecordBuilder() {
    QuizSetRecord._initializeBuilder(this);
  }

  QuizSetRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quizName = $v.quizName;
      _duration = $v.duration;
      _totalQuestions = $v.totalQuestions;
      _quizDescription = $v.quizDescription;
      _coverPhoto = $v.coverPhoto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizSetRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuizSetRecord;
  }

  @override
  void update(void Function(QuizSetRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizSetRecord build() => _build();

  _$QuizSetRecord _build() {
    final _$result = _$v ??
        new _$QuizSetRecord._(
            quizName: quizName,
            duration: duration,
            totalQuestions: totalQuestions,
            quizDescription: quizDescription,
            coverPhoto: coverPhoto,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
