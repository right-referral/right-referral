// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidature_workflow_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CandidatureWorkflowRecord> _$candidatureWorkflowRecordSerializer =
    new _$CandidatureWorkflowRecordSerializer();

class _$CandidatureWorkflowRecordSerializer
    implements StructuredSerializer<CandidatureWorkflowRecord> {
  @override
  final Iterable<Type> types = const [
    CandidatureWorkflowRecord,
    _$CandidatureWorkflowRecord
  ];
  @override
  final String wireName = 'CandidatureWorkflowRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CandidatureWorkflowRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.workflowId;
    if (value != null) {
      result
        ..add('workflow_id')
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
    value = object.candidateEmail;
    if (value != null) {
      result
        ..add('candidate_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.candidateName;
    if (value != null) {
      result
        ..add('candidate_name')
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
    value = object.recruiterEmail;
    if (value != null) {
      result
        ..add('recruiter_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobId;
    if (value != null) {
      result
        ..add('job_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roundNum;
    if (value != null) {
      result
        ..add('round_num')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.roundName;
    if (value != null) {
      result
        ..add('round_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roundDesc;
    if (value != null) {
      result
        ..add('round_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roundScheduledDt;
    if (value != null) {
      result
        ..add('round_scheduled_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.roundTakenBy;
    if (value != null) {
      result
        ..add('round_taken_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roundStatus;
    if (value != null) {
      result
        ..add('round_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roundStatusDt;
    if (value != null) {
      result
        ..add('round_status_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.candidateFeedback;
    if (value != null) {
      result
        ..add('candidate_feedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.candidateFeedbackDt;
    if (value != null) {
      result
        ..add('candidate_feedback_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.recruiterFeedback;
    if (value != null) {
      result
        ..add('recruiter_feedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruiterFeedbackDt;
    if (value != null) {
      result
        ..add('recruiter_feedback_dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CandidatureWorkflowRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CandidatureWorkflowRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'workflow_id':
          result.workflowId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_uid':
          result.candidateUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_email':
          result.candidateEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_name':
          result.candidateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_uid':
          result.recruiterUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_email':
          result.recruiterEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_id':
          result.jobId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'round_num':
          result.roundNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'round_name':
          result.roundName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'round_desc':
          result.roundDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'round_scheduled_dt':
          result.roundScheduledDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'round_taken_by':
          result.roundTakenBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'round_status':
          result.roundStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'round_status_dt':
          result.roundStatusDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'candidate_feedback':
          result.candidateFeedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'candidate_feedback_dt':
          result.candidateFeedbackDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'recruiter_feedback':
          result.recruiterFeedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruiter_feedback_dt':
          result.recruiterFeedbackDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$CandidatureWorkflowRecord extends CandidatureWorkflowRecord {
  @override
  final String workflowId;
  @override
  final String candidateUid;
  @override
  final String candidateEmail;
  @override
  final String candidateName;
  @override
  final String recruiterUid;
  @override
  final String recruiterEmail;
  @override
  final String jobId;
  @override
  final int roundNum;
  @override
  final String roundName;
  @override
  final String roundDesc;
  @override
  final DateTime roundScheduledDt;
  @override
  final String roundTakenBy;
  @override
  final String roundStatus;
  @override
  final DateTime roundStatusDt;
  @override
  final String candidateFeedback;
  @override
  final DateTime candidateFeedbackDt;
  @override
  final String recruiterFeedback;
  @override
  final DateTime recruiterFeedbackDt;
  @override
  final DocumentReference<Object> reference;

  factory _$CandidatureWorkflowRecord(
          [void Function(CandidatureWorkflowRecordBuilder) updates]) =>
      (new CandidatureWorkflowRecordBuilder()..update(updates)).build();

  _$CandidatureWorkflowRecord._(
      {this.workflowId,
      this.candidateUid,
      this.candidateEmail,
      this.candidateName,
      this.recruiterUid,
      this.recruiterEmail,
      this.jobId,
      this.roundNum,
      this.roundName,
      this.roundDesc,
      this.roundScheduledDt,
      this.roundTakenBy,
      this.roundStatus,
      this.roundStatusDt,
      this.candidateFeedback,
      this.candidateFeedbackDt,
      this.recruiterFeedback,
      this.recruiterFeedbackDt,
      this.reference})
      : super._();

  @override
  CandidatureWorkflowRecord rebuild(
          void Function(CandidatureWorkflowRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CandidatureWorkflowRecordBuilder toBuilder() =>
      new CandidatureWorkflowRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CandidatureWorkflowRecord &&
        workflowId == other.workflowId &&
        candidateUid == other.candidateUid &&
        candidateEmail == other.candidateEmail &&
        candidateName == other.candidateName &&
        recruiterUid == other.recruiterUid &&
        recruiterEmail == other.recruiterEmail &&
        jobId == other.jobId &&
        roundNum == other.roundNum &&
        roundName == other.roundName &&
        roundDesc == other.roundDesc &&
        roundScheduledDt == other.roundScheduledDt &&
        roundTakenBy == other.roundTakenBy &&
        roundStatus == other.roundStatus &&
        roundStatusDt == other.roundStatusDt &&
        candidateFeedback == other.candidateFeedback &&
        candidateFeedbackDt == other.candidateFeedbackDt &&
        recruiterFeedback == other.recruiterFeedback &&
        recruiterFeedbackDt == other.recruiterFeedbackDt &&
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
                                                                            $jc(
                                                                                0,
                                                                                workflowId
                                                                                    .hashCode),
                                                                            candidateUid
                                                                                .hashCode),
                                                                        candidateEmail
                                                                            .hashCode),
                                                                    candidateName
                                                                        .hashCode),
                                                                recruiterUid
                                                                    .hashCode),
                                                            recruiterEmail
                                                                .hashCode),
                                                        jobId.hashCode),
                                                    roundNum.hashCode),
                                                roundName.hashCode),
                                            roundDesc.hashCode),
                                        roundScheduledDt.hashCode),
                                    roundTakenBy.hashCode),
                                roundStatus.hashCode),
                            roundStatusDt.hashCode),
                        candidateFeedback.hashCode),
                    candidateFeedbackDt.hashCode),
                recruiterFeedback.hashCode),
            recruiterFeedbackDt.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CandidatureWorkflowRecord')
          ..add('workflowId', workflowId)
          ..add('candidateUid', candidateUid)
          ..add('candidateEmail', candidateEmail)
          ..add('candidateName', candidateName)
          ..add('recruiterUid', recruiterUid)
          ..add('recruiterEmail', recruiterEmail)
          ..add('jobId', jobId)
          ..add('roundNum', roundNum)
          ..add('roundName', roundName)
          ..add('roundDesc', roundDesc)
          ..add('roundScheduledDt', roundScheduledDt)
          ..add('roundTakenBy', roundTakenBy)
          ..add('roundStatus', roundStatus)
          ..add('roundStatusDt', roundStatusDt)
          ..add('candidateFeedback', candidateFeedback)
          ..add('candidateFeedbackDt', candidateFeedbackDt)
          ..add('recruiterFeedback', recruiterFeedback)
          ..add('recruiterFeedbackDt', recruiterFeedbackDt)
          ..add('reference', reference))
        .toString();
  }
}

class CandidatureWorkflowRecordBuilder
    implements
        Builder<CandidatureWorkflowRecord, CandidatureWorkflowRecordBuilder> {
  _$CandidatureWorkflowRecord _$v;

  String _workflowId;
  String get workflowId => _$this._workflowId;
  set workflowId(String workflowId) => _$this._workflowId = workflowId;

  String _candidateUid;
  String get candidateUid => _$this._candidateUid;
  set candidateUid(String candidateUid) => _$this._candidateUid = candidateUid;

  String _candidateEmail;
  String get candidateEmail => _$this._candidateEmail;
  set candidateEmail(String candidateEmail) =>
      _$this._candidateEmail = candidateEmail;

  String _candidateName;
  String get candidateName => _$this._candidateName;
  set candidateName(String candidateName) =>
      _$this._candidateName = candidateName;

  String _recruiterUid;
  String get recruiterUid => _$this._recruiterUid;
  set recruiterUid(String recruiterUid) => _$this._recruiterUid = recruiterUid;

  String _recruiterEmail;
  String get recruiterEmail => _$this._recruiterEmail;
  set recruiterEmail(String recruiterEmail) =>
      _$this._recruiterEmail = recruiterEmail;

  String _jobId;
  String get jobId => _$this._jobId;
  set jobId(String jobId) => _$this._jobId = jobId;

  int _roundNum;
  int get roundNum => _$this._roundNum;
  set roundNum(int roundNum) => _$this._roundNum = roundNum;

  String _roundName;
  String get roundName => _$this._roundName;
  set roundName(String roundName) => _$this._roundName = roundName;

  String _roundDesc;
  String get roundDesc => _$this._roundDesc;
  set roundDesc(String roundDesc) => _$this._roundDesc = roundDesc;

  DateTime _roundScheduledDt;
  DateTime get roundScheduledDt => _$this._roundScheduledDt;
  set roundScheduledDt(DateTime roundScheduledDt) =>
      _$this._roundScheduledDt = roundScheduledDt;

  String _roundTakenBy;
  String get roundTakenBy => _$this._roundTakenBy;
  set roundTakenBy(String roundTakenBy) => _$this._roundTakenBy = roundTakenBy;

  String _roundStatus;
  String get roundStatus => _$this._roundStatus;
  set roundStatus(String roundStatus) => _$this._roundStatus = roundStatus;

  DateTime _roundStatusDt;
  DateTime get roundStatusDt => _$this._roundStatusDt;
  set roundStatusDt(DateTime roundStatusDt) =>
      _$this._roundStatusDt = roundStatusDt;

  String _candidateFeedback;
  String get candidateFeedback => _$this._candidateFeedback;
  set candidateFeedback(String candidateFeedback) =>
      _$this._candidateFeedback = candidateFeedback;

  DateTime _candidateFeedbackDt;
  DateTime get candidateFeedbackDt => _$this._candidateFeedbackDt;
  set candidateFeedbackDt(DateTime candidateFeedbackDt) =>
      _$this._candidateFeedbackDt = candidateFeedbackDt;

  String _recruiterFeedback;
  String get recruiterFeedback => _$this._recruiterFeedback;
  set recruiterFeedback(String recruiterFeedback) =>
      _$this._recruiterFeedback = recruiterFeedback;

  DateTime _recruiterFeedbackDt;
  DateTime get recruiterFeedbackDt => _$this._recruiterFeedbackDt;
  set recruiterFeedbackDt(DateTime recruiterFeedbackDt) =>
      _$this._recruiterFeedbackDt = recruiterFeedbackDt;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CandidatureWorkflowRecordBuilder() {
    CandidatureWorkflowRecord._initializeBuilder(this);
  }

  CandidatureWorkflowRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workflowId = $v.workflowId;
      _candidateUid = $v.candidateUid;
      _candidateEmail = $v.candidateEmail;
      _candidateName = $v.candidateName;
      _recruiterUid = $v.recruiterUid;
      _recruiterEmail = $v.recruiterEmail;
      _jobId = $v.jobId;
      _roundNum = $v.roundNum;
      _roundName = $v.roundName;
      _roundDesc = $v.roundDesc;
      _roundScheduledDt = $v.roundScheduledDt;
      _roundTakenBy = $v.roundTakenBy;
      _roundStatus = $v.roundStatus;
      _roundStatusDt = $v.roundStatusDt;
      _candidateFeedback = $v.candidateFeedback;
      _candidateFeedbackDt = $v.candidateFeedbackDt;
      _recruiterFeedback = $v.recruiterFeedback;
      _recruiterFeedbackDt = $v.recruiterFeedbackDt;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CandidatureWorkflowRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CandidatureWorkflowRecord;
  }

  @override
  void update(void Function(CandidatureWorkflowRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CandidatureWorkflowRecord build() {
    final _$result = _$v ??
        new _$CandidatureWorkflowRecord._(
            workflowId: workflowId,
            candidateUid: candidateUid,
            candidateEmail: candidateEmail,
            candidateName: candidateName,
            recruiterUid: recruiterUid,
            recruiterEmail: recruiterEmail,
            jobId: jobId,
            roundNum: roundNum,
            roundName: roundName,
            roundDesc: roundDesc,
            roundScheduledDt: roundScheduledDt,
            roundTakenBy: roundTakenBy,
            roundStatus: roundStatus,
            roundStatusDt: roundStatusDt,
            candidateFeedback: candidateFeedback,
            candidateFeedbackDt: candidateFeedbackDt,
            recruiterFeedback: recruiterFeedback,
            recruiterFeedbackDt: recruiterFeedbackDt,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
