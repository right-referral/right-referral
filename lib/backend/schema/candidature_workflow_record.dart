import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'candidature_workflow_record.g.dart';

abstract class CandidatureWorkflowRecord
    implements
        Built<CandidatureWorkflowRecord, CandidatureWorkflowRecordBuilder> {
  static Serializer<CandidatureWorkflowRecord> get serializer =>
      _$candidatureWorkflowRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'workflow_id')
  String get workflowId;

  @nullable
  @BuiltValueField(wireName: 'candidate_uid')
  String get candidateUid;

  @nullable
  @BuiltValueField(wireName: 'candidate_email')
  String get candidateEmail;

  @nullable
  @BuiltValueField(wireName: 'candidate_name')
  String get candidateName;

  @nullable
  @BuiltValueField(wireName: 'recruiter_uid')
  String get recruiterUid;

  @nullable
  @BuiltValueField(wireName: 'recruiter_email')
  String get recruiterEmail;

  @nullable
  @BuiltValueField(wireName: 'job_id')
  String get jobId;

  @nullable
  @BuiltValueField(wireName: 'round_num')
  int get roundNum;

  @nullable
  @BuiltValueField(wireName: 'round_name')
  String get roundName;

  @nullable
  @BuiltValueField(wireName: 'round_desc')
  String get roundDesc;

  @nullable
  @BuiltValueField(wireName: 'round_scheduled_dt')
  DateTime get roundScheduledDt;

  @nullable
  @BuiltValueField(wireName: 'round_taken_by')
  String get roundTakenBy;

  @nullable
  @BuiltValueField(wireName: 'round_status')
  String get roundStatus;

  @nullable
  @BuiltValueField(wireName: 'round_status_dt')
  DateTime get roundStatusDt;

  @nullable
  @BuiltValueField(wireName: 'candidate_feedback')
  String get candidateFeedback;

  @nullable
  @BuiltValueField(wireName: 'candidate_feedback_dt')
  DateTime get candidateFeedbackDt;

  @nullable
  @BuiltValueField(wireName: 'recruiter_feedback')
  String get recruiterFeedback;

  @nullable
  @BuiltValueField(wireName: 'recruiter_feedback_dt')
  DateTime get recruiterFeedbackDt;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CandidatureWorkflowRecordBuilder builder) =>
      builder
        ..workflowId = ''
        ..candidateUid = ''
        ..candidateEmail = ''
        ..candidateName = ''
        ..recruiterUid = ''
        ..recruiterEmail = ''
        ..jobId = ''
        ..roundNum = 0
        ..roundName = ''
        ..roundDesc = ''
        ..roundTakenBy = ''
        ..roundStatus = ''
        ..candidateFeedback = ''
        ..recruiterFeedback = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidatureWorkflow');

  static Stream<CandidatureWorkflowRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CandidatureWorkflowRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CandidatureWorkflowRecord._();
  factory CandidatureWorkflowRecord(
          [void Function(CandidatureWorkflowRecordBuilder) updates]) =
      _$CandidatureWorkflowRecord;

  static CandidatureWorkflowRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCandidatureWorkflowRecordData({
  String workflowId,
  String candidateUid,
  String candidateEmail,
  String candidateName,
  String recruiterUid,
  String recruiterEmail,
  String jobId,
  int roundNum,
  String roundName,
  String roundDesc,
  DateTime roundScheduledDt,
  String roundTakenBy,
  String roundStatus,
  DateTime roundStatusDt,
  String candidateFeedback,
  DateTime candidateFeedbackDt,
  String recruiterFeedback,
  DateTime recruiterFeedbackDt,
}) =>
    serializers.toFirestore(
        CandidatureWorkflowRecord.serializer,
        CandidatureWorkflowRecord((c) => c
          ..workflowId = workflowId
          ..candidateUid = candidateUid
          ..candidateEmail = candidateEmail
          ..candidateName = candidateName
          ..recruiterUid = recruiterUid
          ..recruiterEmail = recruiterEmail
          ..jobId = jobId
          ..roundNum = roundNum
          ..roundName = roundName
          ..roundDesc = roundDesc
          ..roundScheduledDt = roundScheduledDt
          ..roundTakenBy = roundTakenBy
          ..roundStatus = roundStatus
          ..roundStatusDt = roundStatusDt
          ..candidateFeedback = candidateFeedback
          ..candidateFeedbackDt = candidateFeedbackDt
          ..recruiterFeedback = recruiterFeedback
          ..recruiterFeedbackDt = recruiterFeedbackDt));
