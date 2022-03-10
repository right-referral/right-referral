import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'candidate_profile_record.g.dart';

abstract class CandidateProfileRecord
    implements Built<CandidateProfileRecord, CandidateProfileRecordBuilder> {
  static Serializer<CandidateProfileRecord> get serializer =>
      _$candidateProfileRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'joined_date')
  DateTime get joinedDate;

  @nullable
  String get fullname;

  @nullable
  double get experience;

  @nullable
  @BuiltValueField(wireName: 'position_title')
  String get positionTitle;

  @nullable
  @BuiltValueField(wireName: 'profile_desc')
  String get profileDesc;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CandidateProfileRecordBuilder builder) =>
      builder
        ..displayName = ''
        ..email = ''
        ..fullname = ''
        ..experience = 0.0
        ..positionTitle = ''
        ..profileDesc = ''
        ..photoUrl = ''
        ..uid = ''
        ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidate_profile');

  static Stream<CandidateProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CandidateProfileRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CandidateProfileRecord._();
  factory CandidateProfileRecord(
          [void Function(CandidateProfileRecordBuilder) updates]) =
      _$CandidateProfileRecord;

  static CandidateProfileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCandidateProfileRecordData({
  String displayName,
  String email,
  DateTime joinedDate,
  String fullname,
  double experience,
  String positionTitle,
  String profileDesc,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        CandidateProfileRecord.serializer,
        CandidateProfileRecord((c) => c
          ..displayName = displayName
          ..email = email
          ..joinedDate = joinedDate
          ..fullname = fullname
          ..experience = experience
          ..positionTitle = positionTitle
          ..profileDesc = profileDesc
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
