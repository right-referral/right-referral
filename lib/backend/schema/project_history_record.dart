import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'project_history_record.g.dart';

abstract class ProjectHistoryRecord
    implements Built<ProjectHistoryRecord, ProjectHistoryRecordBuilder> {
  static Serializer<ProjectHistoryRecord> get serializer =>
      _$projectHistoryRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'project_title')
  String get projectTitle;

  @nullable
  @BuiltValueField(wireName: 'project_desc')
  String get projectDesc;

  @nullable
  @BuiltValueField(wireName: 'company_name')
  String get companyName;

  @nullable
  @BuiltValueField(wireName: 'role_title')
  String get roleTitle;

  @nullable
  @BuiltValueField(wireName: 'role_desc')
  String get roleDesc;

  @nullable
  @BuiltValueField(wireName: 'skills_used')
  String get skillsUsed;

  @nullable
  @BuiltValueField(wireName: 'start_date')
  DateTime get startDate;

  @nullable
  @BuiltValueField(wireName: 'end_date')
  DateTime get endDate;

  @nullable
  String get referrences;

  @nullable
  String get appreciations;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProjectHistoryRecordBuilder builder) => builder
    ..projectTitle = ''
    ..projectDesc = ''
    ..companyName = ''
    ..roleTitle = ''
    ..roleDesc = ''
    ..skillsUsed = ''
    ..referrences = ''
    ..appreciations = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projectHistory');

  static Stream<ProjectHistoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProjectHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProjectHistoryRecord._();
  factory ProjectHistoryRecord(
          [void Function(ProjectHistoryRecordBuilder) updates]) =
      _$ProjectHistoryRecord;

  static ProjectHistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProjectHistoryRecordData({
  DocumentReference user,
  String projectTitle,
  String projectDesc,
  String companyName,
  String roleTitle,
  String roleDesc,
  String skillsUsed,
  DateTime startDate,
  DateTime endDate,
  String referrences,
  String appreciations,
}) =>
    serializers.toFirestore(
        ProjectHistoryRecord.serializer,
        ProjectHistoryRecord((p) => p
          ..user = user
          ..projectTitle = projectTitle
          ..projectDesc = projectDesc
          ..companyName = companyName
          ..roleTitle = roleTitle
          ..roleDesc = roleDesc
          ..skillsUsed = skillsUsed
          ..startDate = startDate
          ..endDate = endDate
          ..referrences = referrences
          ..appreciations = appreciations));
