import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'applied_jobs_record.g.dart';

abstract class AppliedJobsRecord
    implements Built<AppliedJobsRecord, AppliedJobsRecordBuilder> {
  static Serializer<AppliedJobsRecord> get serializer =>
      _$appliedJobsRecordSerializer;

  @nullable
  String get jobid;

  @nullable
  @BuiltValueField(wireName: 'candidate_emailid')
  String get candidateEmailid;

  @nullable
  @BuiltValueField(wireName: 'candidate_uid')
  String get candidateUid;

  @nullable
  @BuiltValueField(wireName: 'applied_on_dt')
  DateTime get appliedOnDt;

  @nullable
  @BuiltValueField(wireName: 'referrer_email_id')
  String get referrerEmailId;

  @nullable
  @BuiltValueField(wireName: 'referrer_linkdln')
  String get referrerLinkdln;

  @nullable
  @BuiltValueField(wireName: 'referrer_comments')
  String get referrerComments;

  @nullable
  @BuiltValueField(wireName: 'referrer_verification_status')
  String get referrerVerificationStatus;

  @nullable
  @BuiltValueField(wireName: 'verification_status_dt')
  DateTime get verificationStatusDt;

  @nullable
  @BuiltValueField(wireName: 'referrer_uid')
  String get referrerUid;

  @nullable
  @BuiltValueField(wireName: 'recruiter_uid')
  String get recruiterUid;

  @nullable
  @BuiltValueField(wireName: 'recruiter_emailid')
  String get recruiterEmailid;

  @nullable
  @BuiltValueField(wireName: 'recruiter_comments')
  String get recruiterComments;

  @nullable
  @BuiltValueField(wireName: 'recruiter_approval')
  String get recruiterApproval;

  @nullable
  @BuiltValueField(wireName: 'recruiter_approval_dt')
  DateTime get recruiterApprovalDt;

  @nullable
  @BuiltValueField(wireName: 'referrer_candidate_relation')
  String get referrerCandidateRelation;

  @nullable
  @BuiltValueField(wireName: 'initiated_by')
  String get initiatedBy;

  @nullable
  @BuiltValueField(wireName: 'initiated_dt')
  DateTime get initiatedDt;

  @nullable
  @BuiltValueField(wireName: 'initiator_comments')
  String get initiatorComments;

  @nullable
  @BuiltValueField(wireName: 'candidate_acceptance_status')
  String get candidateAcceptanceStatus;

  @nullable
  @BuiltValueField(wireName: 'referrer_acceptance_status')
  String get referrerAcceptanceStatus;

  @nullable
  @BuiltValueField(wireName: 'recruiter_acceptance_status')
  String get recruiterAcceptanceStatus;

  @nullable
  @BuiltValueField(wireName: 'jobid_ref')
  DocumentReference get jobidRef;

  @nullable
  String get company;

  @nullable
  @BuiltValueField(wireName: 'job_title')
  String get jobTitle;

  @nullable
  @BuiltValueField(wireName: 'admin_verification_status')
  String get adminVerificationStatus;

  @nullable
  @BuiltValueField(wireName: 'admin_verification_dt')
  DateTime get adminVerificationDt;

  @nullable
  @BuiltValueField(wireName: 'admin_verification_comments')
  String get adminVerificationComments;

  @nullable
  @BuiltValueField(wireName: 'admin_email')
  String get adminEmail;

  @nullable
  @BuiltValueField(wireName: 'admin_uid')
  String get adminUid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AppliedJobsRecordBuilder builder) => builder
    ..jobid = ''
    ..candidateEmailid = ''
    ..candidateUid = ''
    ..referrerEmailId = ''
    ..referrerLinkdln = ''
    ..referrerComments = ''
    ..referrerVerificationStatus = ''
    ..referrerUid = ''
    ..recruiterUid = ''
    ..recruiterEmailid = ''
    ..recruiterComments = ''
    ..recruiterApproval = ''
    ..referrerCandidateRelation = ''
    ..initiatedBy = ''
    ..initiatorComments = ''
    ..candidateAcceptanceStatus = ''
    ..referrerAcceptanceStatus = ''
    ..recruiterAcceptanceStatus = ''
    ..company = ''
    ..jobTitle = ''
    ..adminVerificationStatus = ''
    ..adminVerificationComments = ''
    ..adminEmail = ''
    ..adminUid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appliedJobs');

  static Stream<AppliedJobsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AppliedJobsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AppliedJobsRecord._();
  factory AppliedJobsRecord([void Function(AppliedJobsRecordBuilder) updates]) =
      _$AppliedJobsRecord;

  static AppliedJobsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAppliedJobsRecordData({
  String jobid,
  String candidateEmailid,
  String candidateUid,
  DateTime appliedOnDt,
  String referrerEmailId,
  String referrerLinkdln,
  String referrerComments,
  String referrerVerificationStatus,
  DateTime verificationStatusDt,
  String referrerUid,
  String recruiterUid,
  String recruiterEmailid,
  String recruiterComments,
  String recruiterApproval,
  DateTime recruiterApprovalDt,
  String referrerCandidateRelation,
  String initiatedBy,
  DateTime initiatedDt,
  String initiatorComments,
  String candidateAcceptanceStatus,
  String referrerAcceptanceStatus,
  String recruiterAcceptanceStatus,
  DocumentReference jobidRef,
  String company,
  String jobTitle,
  String adminVerificationStatus,
  DateTime adminVerificationDt,
  String adminVerificationComments,
  String adminEmail,
  String adminUid,
}) =>
    serializers.toFirestore(
        AppliedJobsRecord.serializer,
        AppliedJobsRecord((a) => a
          ..jobid = jobid
          ..candidateEmailid = candidateEmailid
          ..candidateUid = candidateUid
          ..appliedOnDt = appliedOnDt
          ..referrerEmailId = referrerEmailId
          ..referrerLinkdln = referrerLinkdln
          ..referrerComments = referrerComments
          ..referrerVerificationStatus = referrerVerificationStatus
          ..verificationStatusDt = verificationStatusDt
          ..referrerUid = referrerUid
          ..recruiterUid = recruiterUid
          ..recruiterEmailid = recruiterEmailid
          ..recruiterComments = recruiterComments
          ..recruiterApproval = recruiterApproval
          ..recruiterApprovalDt = recruiterApprovalDt
          ..referrerCandidateRelation = referrerCandidateRelation
          ..initiatedBy = initiatedBy
          ..initiatedDt = initiatedDt
          ..initiatorComments = initiatorComments
          ..candidateAcceptanceStatus = candidateAcceptanceStatus
          ..referrerAcceptanceStatus = referrerAcceptanceStatus
          ..recruiterAcceptanceStatus = recruiterAcceptanceStatus
          ..jobidRef = jobidRef
          ..company = company
          ..jobTitle = jobTitle
          ..adminVerificationStatus = adminVerificationStatus
          ..adminVerificationDt = adminVerificationDt
          ..adminVerificationComments = adminVerificationComments
          ..adminEmail = adminEmail
          ..adminUid = adminUid));
