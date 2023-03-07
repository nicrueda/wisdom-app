import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quiz_set_record.g.dart';

abstract class QuizSetRecord
    implements Built<QuizSetRecord, QuizSetRecordBuilder> {
  static Serializer<QuizSetRecord> get serializer => _$quizSetRecordSerializer;

  @BuiltValueField(wireName: 'quiz_name')
  String? get quizName;

  int? get duration;

  @BuiltValueField(wireName: 'total_questions')
  int? get totalQuestions;

  @BuiltValueField(wireName: 'quiz_description')
  String? get quizDescription;

  @BuiltValueField(wireName: 'cover_photo')
  String? get coverPhoto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(QuizSetRecordBuilder builder) => builder
    ..quizName = ''
    ..duration = 0
    ..totalQuestions = 0
    ..quizDescription = ''
    ..coverPhoto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizSet');

  static Stream<QuizSetRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QuizSetRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QuizSetRecord._();
  factory QuizSetRecord([void Function(QuizSetRecordBuilder) updates]) =
      _$QuizSetRecord;

  static QuizSetRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQuizSetRecordData({
  String? quizName,
  int? duration,
  int? totalQuestions,
  String? quizDescription,
  String? coverPhoto,
}) {
  final firestoreData = serializers.toFirestore(
    QuizSetRecord.serializer,
    QuizSetRecord(
      (q) => q
        ..quizName = quizName
        ..duration = duration
        ..totalQuestions = totalQuestions
        ..quizDescription = quizDescription
        ..coverPhoto = coverPhoto,
    ),
  );

  return firestoreData;
}
