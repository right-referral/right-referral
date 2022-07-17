import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recruiter_profile_record.g.dart';

abstract class RecruiterProfileRecord
    implements Built<RecruiterProfileRecord, RecruiterProfileRecordBuilder> {
  static Serializer<RecruiterProfileRecord> get serializer =>
      _$recruiterProfileRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  String get profileType;

  @nullable
  @BuiltValueField(wireName: 'recruited_candidates_num')
  int get recruitedCandidatesNum;

  @nullable
  @BuiltValueField(wireName: 'posted_job_num')
  int get postedJobNum;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RecruiterProfileRecordBuilder builder) =>
      builder
        ..email = ''
        ..uid = ''
        ..profileType = ''
        ..recruitedCandidatesNum = 0
        ..postedJobNum = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recruiterProfile');

  static Stream<RecruiterProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RecruiterProfileRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  RecruiterProfileRecord._();
  factory RecruiterProfileRecord(
          [void Function(RecruiterProfileRecordBuilder) updates]) =
      _$RecruiterProfileRecord;

  static RecruiterProfileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRecruiterProfileRecordData({
  String email,
  String uid,
  String profileType,
  int recruitedCandidatesNum,
  int postedJobNum,
  DocumentReference user,
}) =>
    serializers.toFirestore(
        RecruiterProfileRecord.serializer,
        RecruiterProfileRecord((r) => r
          ..email = email
          ..uid = uid
          ..profileType = profileType
          ..recruitedCandidatesNum = recruitedCandidatesNum
          ..postedJobNum = postedJobNum
          ..user = user));
