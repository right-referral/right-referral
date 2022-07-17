// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_jobs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppliedJobsRecord> _$appliedJobsRecordSerializer =
    new _$AppliedJobsRecordSerializer();

class _$AppliedJobsRecordSerializer
    implements StructuredSerializer<AppliedJobsRecord> {
  @override
  final Iterable<Type> types = const [AppliedJobsRecord, _$AppliedJobsRecord];
  @override
  final String wireName = 'AppliedJobsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AppliedJobsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.jobid;
    if (value != null) {
      result
        ..add('jobid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.candidateEmailid;
    if (value != null) {
      result
        ..add('candidate_emailid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.candidateUid;
    if (value != null) {
      result
        ..add('candidate_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appliedOnDt;
    if (value != null) {
      result
        ..add('applied_on_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.referrerEmailId;
    if (value != null) {
      result
        ..add('referrer_email_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referrerLinkdln;
    if (value != null) {
      result
        ..add('referrer_linkdln')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referrerComments;
    if (value != null) {
      result
        ..add('referrer_comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referrerVerificationStatus;
    if (value != null) {
      result
        ..add('referrer_verification_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verificationStatusDt;
    if (value != null) {
      result
        ..add('verification_status_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.referrerUid;
    if (value != null) {
      result
        ..add('referrer_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruiterUid;
    if (value != null) {
      result
        ..add('recruiter_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruiterEmailid;
    if (value != null) {
      result
        ..add('recruiter_emailid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruiterComments;
    if (value != null) {
      result
        ..add('recruiter_comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruiterApproval;
    if (value != null) {
      result
        ..add('recruiter_approval')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruiterApprovalDt;
    if (value != null) {
      result
        ..add('recruiter_approval_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.referrerCandidateRelation;
    if (value != null) {
      result
        ..add('referrer_candidate_relation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.initiatedBy;
    if (value != null) {
      result
        ..add('initiated_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.initiatedDt;
    if (value != null) {
      result
        ..add('initiated_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.initiatorComments;
    if (value != null) {
      result
        ..add('initiator_comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.candidateAcceptanceStatus;
    if (value != null) {
      result
        ..add('candidate_acceptance_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referrerAcceptanceStatus;
    if (value != null) {
      result
        ..add('referrer_acceptance_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruiterAcceptanceStatus;
    if (value != null) {
      result
        ..add('recruiter_acceptance_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobidRef;
    if (value != null) {
      result
        ..add('jobid_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobTitle;
    if (value != null) {
      result
        ..add('job_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adminVerificationStatus;
    if (value != null) {
      result
        ..add('admin_verification_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adminVerificationDt;
    if (value != null) {
      result
        ..add('admin_verification_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.adminVerificationComments;
    if (value != null) {
      result
        ..add('admin_verification_comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adminEmail;
    if (value != null) {
      result
        ..add('admin_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adminUid;
    if (value != null) {
      result
        ..add('admin_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AppliedJobsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppliedJobsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'jobid':
          result.jobid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_emailid':
          result.candidateEmailid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_uid':
          result.candidateUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'applied_on_dt':
          result.appliedOnDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'referrer_email_id':
          result.referrerEmailId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referrer_linkdln':
          result.referrerLinkdln = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referrer_comments':
          result.referrerComments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referrer_verification_status':
          result.referrerVerificationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verification_status_dt':
          result.verificationStatusDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'referrer_uid':
          result.referrerUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_uid':
          result.recruiterUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_emailid':
          result.recruiterEmailid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_comments':
          result.recruiterComments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_approval':
          result.recruiterApproval = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_approval_dt':
          result.recruiterApprovalDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'referrer_candidate_relation':
          result.referrerCandidateRelation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'initiated_by':
          result.initiatedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'initiated_dt':
          result.initiatedDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'initiator_comments':
          result.initiatorComments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_acceptance_status':
          result.candidateAcceptanceStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referrer_acceptance_status':
          result.referrerAcceptanceStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_acceptance_status':
          result.recruiterAcceptanceStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobid_ref':
          result.jobidRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_title':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'admin_verification_status':
          result.adminVerificationStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'admin_verification_dt':
          result.adminVerificationDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'admin_verification_comments':
          result.adminVerificationComments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'admin_email':
          result.adminEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'admin_uid':
          result.adminUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AppliedJobsRecord extends AppliedJobsRecord {
  @override
  final String jobid;
  @override
  final String candidateEmailid;
  @override
  final String candidateUid;
  @override
  final DateTime appliedOnDt;
  @override
  final String referrerEmailId;
  @override
  final String referrerLinkdln;
  @override
  final String referrerComments;
  @override
  final String referrerVerificationStatus;
  @override
  final DateTime verificationStatusDt;
  @override
  final String referrerUid;
  @override
  final String recruiterUid;
  @override
  final String recruiterEmailid;
  @override
  final String recruiterComments;
  @override
  final String recruiterApproval;
  @override
  final DateTime recruiterApprovalDt;
  @override
  final String referrerCandidateRelation;
  @override
  final String initiatedBy;
  @override
  final DateTime initiatedDt;
  @override
  final String initiatorComments;
  @override
  final String candidateAcceptanceStatus;
  @override
  final String referrerAcceptanceStatus;
  @override
  final String recruiterAcceptanceStatus;
  @override
  final DocumentReference<Object> jobidRef;
  @override
  final String company;
  @override
  final String jobTitle;
  @override
  final String adminVerificationStatus;
  @override
  final DateTime adminVerificationDt;
  @override
  final String adminVerificationComments;
  @override
  final String adminEmail;
  @override
  final String adminUid;
  @override
  final DocumentReference<Object> reference;

  factory _$AppliedJobsRecord(
          [void Function(AppliedJobsRecordBuilder) updates]) =>
      (new AppliedJobsRecordBuilder()..update(updates)).build();

  _$AppliedJobsRecord._(
      {this.jobid,
      this.candidateEmailid,
      this.candidateUid,
      this.appliedOnDt,
      this.referrerEmailId,
      this.referrerLinkdln,
      this.referrerComments,
      this.referrerVerificationStatus,
      this.verificationStatusDt,
      this.referrerUid,
      this.recruiterUid,
      this.recruiterEmailid,
      this.recruiterComments,
      this.recruiterApproval,
      this.recruiterApprovalDt,
      this.referrerCandidateRelation,
      this.initiatedBy,
      this.initiatedDt,
      this.initiatorComments,
      this.candidateAcceptanceStatus,
      this.referrerAcceptanceStatus,
      this.recruiterAcceptanceStatus,
      this.jobidRef,
      this.company,
      this.jobTitle,
      this.adminVerificationStatus,
      this.adminVerificationDt,
      this.adminVerificationComments,
      this.adminEmail,
      this.adminUid,
      this.reference})
      : super._();

  @override
  AppliedJobsRecord rebuild(void Function(AppliedJobsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppliedJobsRecordBuilder toBuilder() =>
      new AppliedJobsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppliedJobsRecord &&
        jobid == other.jobid &&
        candidateEmailid == other.candidateEmailid &&
        candidateUid == other.candidateUid &&
        appliedOnDt == other.appliedOnDt &&
        referrerEmailId == other.referrerEmailId &&
        referrerLinkdln == other.referrerLinkdln &&
        referrerComments == other.referrerComments &&
        referrerVerificationStatus == other.referrerVerificationStatus &&
        verificationStatusDt == other.verificationStatusDt &&
        referrerUid == other.referrerUid &&
        recruiterUid == other.recruiterUid &&
        recruiterEmailid == other.recruiterEmailid &&
        recruiterComments == other.recruiterComments &&
        recruiterApproval == other.recruiterApproval &&
        recruiterApprovalDt == other.recruiterApprovalDt &&
        referrerCandidateRelation == other.referrerCandidateRelation &&
        initiatedBy == other.initiatedBy &&
        initiatedDt == other.initiatedDt &&
        initiatorComments == other.initiatorComments &&
        candidateAcceptanceStatus == other.candidateAcceptanceStatus &&
        referrerAcceptanceStatus == other.referrerAcceptanceStatus &&
        recruiterAcceptanceStatus == other.recruiterAcceptanceStatus &&
        jobidRef == other.jobidRef &&
        company == other.company &&
        jobTitle == other.jobTitle &&
        adminVerificationStatus == other.adminVerificationStatus &&
        adminVerificationDt == other.adminVerificationDt &&
        adminVerificationComments == other.adminVerificationComments &&
        adminEmail == other.adminEmail &&
        adminUid == other.adminUid &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, jobid.hashCode), candidateEmailid.hashCode), candidateUid.hashCode), appliedOnDt.hashCode), referrerEmailId.hashCode), referrerLinkdln.hashCode), referrerComments.hashCode), referrerVerificationStatus.hashCode), verificationStatusDt.hashCode), referrerUid.hashCode), recruiterUid.hashCode), recruiterEmailid.hashCode),
                                                                                recruiterComments.hashCode),
                                                                            recruiterApproval.hashCode),
                                                                        recruiterApprovalDt.hashCode),
                                                                    referrerCandidateRelation.hashCode),
                                                                initiatedBy.hashCode),
                                                            initiatedDt.hashCode),
                                                        initiatorComments.hashCode),
                                                    candidateAcceptanceStatus.hashCode),
                                                referrerAcceptanceStatus.hashCode),
                                            recruiterAcceptanceStatus.hashCode),
                                        jobidRef.hashCode),
                                    company.hashCode),
                                jobTitle.hashCode),
                            adminVerificationStatus.hashCode),
                        adminVerificationDt.hashCode),
                    adminVerificationComments.hashCode),
                adminEmail.hashCode),
            adminUid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppliedJobsRecord')
          ..add('jobid', jobid)
          ..add('candidateEmailid', candidateEmailid)
          ..add('candidateUid', candidateUid)
          ..add('appliedOnDt', appliedOnDt)
          ..add('referrerEmailId', referrerEmailId)
          ..add('referrerLinkdln', referrerLinkdln)
          ..add('referrerComments', referrerComments)
          ..add('referrerVerificationStatus', referrerVerificationStatus)
          ..add('verificationStatusDt', verificationStatusDt)
          ..add('referrerUid', referrerUid)
          ..add('recruiterUid', recruiterUid)
          ..add('recruiterEmailid', recruiterEmailid)
          ..add('recruiterComments', recruiterComments)
          ..add('recruiterApproval', recruiterApproval)
          ..add('recruiterApprovalDt', recruiterApprovalDt)
          ..add('referrerCandidateRelation', referrerCandidateRelation)
          ..add('initiatedBy', initiatedBy)
          ..add('initiatedDt', initiatedDt)
          ..add('initiatorComments', initiatorComments)
          ..add('candidateAcceptanceStatus', candidateAcceptanceStatus)
          ..add('referrerAcceptanceStatus', referrerAcceptanceStatus)
          ..add('recruiterAcceptanceStatus', recruiterAcceptanceStatus)
          ..add('jobidRef', jobidRef)
          ..add('company', company)
          ..add('jobTitle', jobTitle)
          ..add('adminVerificationStatus', adminVerificationStatus)
          ..add('adminVerificationDt', adminVerificationDt)
          ..add('adminVerificationComments', adminVerificationComments)
          ..add('adminEmail', adminEmail)
          ..add('adminUid', adminUid)
          ..add('reference', reference))
        .toString();
  }
}

class AppliedJobsRecordBuilder
    implements Builder<AppliedJobsRecord, AppliedJobsRecordBuilder> {
  _$AppliedJobsRecord _$v;

  String _jobid;
  String get jobid => _$this._jobid;
  set jobid(String jobid) => _$this._jobid = jobid;

  String _candidateEmailid;
  String get candidateEmailid => _$this._candidateEmailid;
  set candidateEmailid(String candidateEmailid) =>
      _$this._candidateEmailid = candidateEmailid;

  String _candidateUid;
  String get candidateUid => _$this._candidateUid;
  set candidateUid(String candidateUid) => _$this._candidateUid = candidateUid;

  DateTime _appliedOnDt;
  DateTime get appliedOnDt => _$this._appliedOnDt;
  set appliedOnDt(DateTime appliedOnDt) => _$this._appliedOnDt = appliedOnDt;

  String _referrerEmailId;
  String get referrerEmailId => _$this._referrerEmailId;
  set referrerEmailId(String referrerEmailId) =>
      _$this._referrerEmailId = referrerEmailId;

  String _referrerLinkdln;
  String get referrerLinkdln => _$this._referrerLinkdln;
  set referrerLinkdln(String referrerLinkdln) =>
      _$this._referrerLinkdln = referrerLinkdln;

  String _referrerComments;
  String get referrerComments => _$this._referrerComments;
  set referrerComments(String referrerComments) =>
      _$this._referrerComments = referrerComments;

  String _referrerVerificationStatus;
  String get referrerVerificationStatus => _$this._referrerVerificationStatus;
  set referrerVerificationStatus(String referrerVerificationStatus) =>
      _$this._referrerVerificationStatus = referrerVerificationStatus;

  DateTime _verificationStatusDt;
  DateTime get verificationStatusDt => _$this._verificationStatusDt;
  set verificationStatusDt(DateTime verificationStatusDt) =>
      _$this._verificationStatusDt = verificationStatusDt;

  String _referrerUid;
  String get referrerUid => _$this._referrerUid;
  set referrerUid(String referrerUid) => _$this._referrerUid = referrerUid;

  String _recruiterUid;
  String get recruiterUid => _$this._recruiterUid;
  set recruiterUid(String recruiterUid) => _$this._recruiterUid = recruiterUid;

  String _recruiterEmailid;
  String get recruiterEmailid => _$this._recruiterEmailid;
  set recruiterEmailid(String recruiterEmailid) =>
      _$this._recruiterEmailid = recruiterEmailid;

  String _recruiterComments;
  String get recruiterComments => _$this._recruiterComments;
  set recruiterComments(String recruiterComments) =>
      _$this._recruiterComments = recruiterComments;

  String _recruiterApproval;
  String get recruiterApproval => _$this._recruiterApproval;
  set recruiterApproval(String recruiterApproval) =>
      _$this._recruiterApproval = recruiterApproval;

  DateTime _recruiterApprovalDt;
  DateTime get recruiterApprovalDt => _$this._recruiterApprovalDt;
  set recruiterApprovalDt(DateTime recruiterApprovalDt) =>
      _$this._recruiterApprovalDt = recruiterApprovalDt;

  String _referrerCandidateRelation;
  String get referrerCandidateRelation => _$this._referrerCandidateRelation;
  set referrerCandidateRelation(String referrerCandidateRelation) =>
      _$this._referrerCandidateRelation = referrerCandidateRelation;

  String _initiatedBy;
  String get initiatedBy => _$this._initiatedBy;
  set initiatedBy(String initiatedBy) => _$this._initiatedBy = initiatedBy;

  DateTime _initiatedDt;
  DateTime get initiatedDt => _$this._initiatedDt;
  set initiatedDt(DateTime initiatedDt) => _$this._initiatedDt = initiatedDt;

  String _initiatorComments;
  String get initiatorComments => _$this._initiatorComments;
  set initiatorComments(String initiatorComments) =>
      _$this._initiatorComments = initiatorComments;

  String _candidateAcceptanceStatus;
  String get candidateAcceptanceStatus => _$this._candidateAcceptanceStatus;
  set candidateAcceptanceStatus(String candidateAcceptanceStatus) =>
      _$this._candidateAcceptanceStatus = candidateAcceptanceStatus;

  String _referrerAcceptanceStatus;
  String get referrerAcceptanceStatus => _$this._referrerAcceptanceStatus;
  set referrerAcceptanceStatus(String referrerAcceptanceStatus) =>
      _$this._referrerAcceptanceStatus = referrerAcceptanceStatus;

  String _recruiterAcceptanceStatus;
  String get recruiterAcceptanceStatus => _$this._recruiterAcceptanceStatus;
  set recruiterAcceptanceStatus(String recruiterAcceptanceStatus) =>
      _$this._recruiterAcceptanceStatus = recruiterAcceptanceStatus;

  DocumentReference<Object> _jobidRef;
  DocumentReference<Object> get jobidRef => _$this._jobidRef;
  set jobidRef(DocumentReference<Object> jobidRef) =>
      _$this._jobidRef = jobidRef;

  String _company;
  String get company => _$this._company;
  set company(String company) => _$this._company = company;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  String _adminVerificationStatus;
  String get adminVerificationStatus => _$this._adminVerificationStatus;
  set adminVerificationStatus(String adminVerificationStatus) =>
      _$this._adminVerificationStatus = adminVerificationStatus;

  DateTime _adminVerificationDt;
  DateTime get adminVerificationDt => _$this._adminVerificationDt;
  set adminVerificationDt(DateTime adminVerificationDt) =>
      _$this._adminVerificationDt = adminVerificationDt;

  String _adminVerificationComments;
  String get adminVerificationComments => _$this._adminVerificationComments;
  set adminVerificationComments(String adminVerificationComments) =>
      _$this._adminVerificationComments = adminVerificationComments;

  String _adminEmail;
  String get adminEmail => _$this._adminEmail;
  set adminEmail(String adminEmail) => _$this._adminEmail = adminEmail;

  String _adminUid;
  String get adminUid => _$this._adminUid;
  set adminUid(String adminUid) => _$this._adminUid = adminUid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AppliedJobsRecordBuilder() {
    AppliedJobsRecord._initializeBuilder(this);
  }

  AppliedJobsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobid = $v.jobid;
      _candidateEmailid = $v.candidateEmailid;
      _candidateUid = $v.candidateUid;
      _appliedOnDt = $v.appliedOnDt;
      _referrerEmailId = $v.referrerEmailId;
      _referrerLinkdln = $v.referrerLinkdln;
      _referrerComments = $v.referrerComments;
      _referrerVerificationStatus = $v.referrerVerificationStatus;
      _verificationStatusDt = $v.verificationStatusDt;
      _referrerUid = $v.referrerUid;
      _recruiterUid = $v.recruiterUid;
      _recruiterEmailid = $v.recruiterEmailid;
      _recruiterComments = $v.recruiterComments;
      _recruiterApproval = $v.recruiterApproval;
      _recruiterApprovalDt = $v.recruiterApprovalDt;
      _referrerCandidateRelation = $v.referrerCandidateRelation;
      _initiatedBy = $v.initiatedBy;
      _initiatedDt = $v.initiatedDt;
      _initiatorComments = $v.initiatorComments;
      _candidateAcceptanceStatus = $v.candidateAcceptanceStatus;
      _referrerAcceptanceStatus = $v.referrerAcceptanceStatus;
      _recruiterAcceptanceStatus = $v.recruiterAcceptanceStatus;
      _jobidRef = $v.jobidRef;
      _company = $v.company;
      _jobTitle = $v.jobTitle;
      _adminVerificationStatus = $v.adminVerificationStatus;
      _adminVerificationDt = $v.adminVerificationDt;
      _adminVerificationComments = $v.adminVerificationComments;
      _adminEmail = $v.adminEmail;
      _adminUid = $v.adminUid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppliedJobsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppliedJobsRecord;
  }

  @override
  void update(void Function(AppliedJobsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppliedJobsRecord build() {
    final _$result = _$v ??
        new _$AppliedJobsRecord._(
            jobid: jobid,
            candidateEmailid: candidateEmailid,
            candidateUid: candidateUid,
            appliedOnDt: appliedOnDt,
            referrerEmailId: referrerEmailId,
            referrerLinkdln: referrerLinkdln,
            referrerComments: referrerComments,
            referrerVerificationStatus: referrerVerificationStatus,
            verificationStatusDt: verificationStatusDt,
            referrerUid: referrerUid,
            recruiterUid: recruiterUid,
            recruiterEmailid: recruiterEmailid,
            recruiterComments: recruiterComments,
            recruiterApproval: recruiterApproval,
            recruiterApprovalDt: recruiterApprovalDt,
            referrerCandidateRelation: referrerCandidateRelation,
            initiatedBy: initiatedBy,
            initiatedDt: initiatedDt,
            initiatorComments: initiatorComments,
            candidateAcceptanceStatus: candidateAcceptanceStatus,
            referrerAcceptanceStatus: referrerAcceptanceStatus,
            recruiterAcceptanceStatus: recruiterAcceptanceStatus,
            jobidRef: jobidRef,
            company: company,
            jobTitle: jobTitle,
            adminVerificationStatus: adminVerificationStatus,
            adminVerificationDt: adminVerificationDt,
            adminVerificationComments: adminVerificationComments,
            adminEmail: adminEmail,
            adminUid: adminUid,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
