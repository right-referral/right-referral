// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recruiter_profile_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecruiterProfileRecord> _$recruiterProfileRecordSerializer =
    new _$RecruiterProfileRecordSerializer();

class _$RecruiterProfileRecordSerializer
    implements StructuredSerializer<RecruiterProfileRecord> {
  @override
  final Iterable<Type> types = const [
    RecruiterProfileRecord,
    _$RecruiterProfileRecord
  ];
  @override
  final String wireName = 'RecruiterProfileRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RecruiterProfileRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileType;
    if (value != null) {
      result
        ..add('profileType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recruitedCandidatesNum;
    if (value != null) {
      result
        ..add('recruited_candidates_num')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postedJobNum;
    if (value != null) {
      result
        ..add('posted_job_num')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  RecruiterProfileRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecruiterProfileRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profileType':
          result.profileType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recruited_candidates_num':
          result.recruitedCandidatesNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'posted_job_num':
          result.postedJobNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$RecruiterProfileRecord extends RecruiterProfileRecord {
  @override
  final String email;
  @override
  final String uid;
  @override
  final String profileType;
  @override
  final int recruitedCandidatesNum;
  @override
  final int postedJobNum;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> reference;

  factory _$RecruiterProfileRecord(
          [void Function(RecruiterProfileRecordBuilder) updates]) =>
      (new RecruiterProfileRecordBuilder()..update(updates)).build();

  _$RecruiterProfileRecord._(
      {this.email,
      this.uid,
      this.profileType,
      this.recruitedCandidatesNum,
      this.postedJobNum,
      this.user,
      this.reference})
      : super._();

  @override
  RecruiterProfileRecord rebuild(
          void Function(RecruiterProfileRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecruiterProfileRecordBuilder toBuilder() =>
      new RecruiterProfileRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecruiterProfileRecord &&
        email == other.email &&
        uid == other.uid &&
        profileType == other.profileType &&
        recruitedCandidatesNum == other.recruitedCandidatesNum &&
        postedJobNum == other.postedJobNum &&
        user == other.user &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, email.hashCode), uid.hashCode),
                        profileType.hashCode),
                    recruitedCandidatesNum.hashCode),
                postedJobNum.hashCode),
            user.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecruiterProfileRecord')
          ..add('email', email)
          ..add('uid', uid)
          ..add('profileType', profileType)
          ..add('recruitedCandidatesNum', recruitedCandidatesNum)
          ..add('postedJobNum', postedJobNum)
          ..add('user', user)
          ..add('reference', reference))
        .toString();
  }
}

class RecruiterProfileRecordBuilder
    implements Builder<RecruiterProfileRecord, RecruiterProfileRecordBuilder> {
  _$RecruiterProfileRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _profileType;
  String get profileType => _$this._profileType;
  set profileType(String profileType) => _$this._profileType = profileType;

  int _recruitedCandidatesNum;
  int get recruitedCandidatesNum => _$this._recruitedCandidatesNum;
  set recruitedCandidatesNum(int recruitedCandidatesNum) =>
      _$this._recruitedCandidatesNum = recruitedCandidatesNum;

  int _postedJobNum;
  int get postedJobNum => _$this._postedJobNum;
  set postedJobNum(int postedJobNum) => _$this._postedJobNum = postedJobNum;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RecruiterProfileRecordBuilder() {
    RecruiterProfileRecord._initializeBuilder(this);
  }

  RecruiterProfileRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _uid = $v.uid;
      _profileType = $v.profileType;
      _recruitedCandidatesNum = $v.recruitedCandidatesNum;
      _postedJobNum = $v.postedJobNum;
      _user = $v.user;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecruiterProfileRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecruiterProfileRecord;
  }

  @override
  void update(void Function(RecruiterProfileRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RecruiterProfileRecord build() {
    final _$result = _$v ??
        new _$RecruiterProfileRecord._(
            email: email,
            uid: uid,
            profileType: profileType,
            recruitedCandidatesNum: recruitedCandidatesNum,
            postedJobNum: postedJobNum,
            user: user,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
