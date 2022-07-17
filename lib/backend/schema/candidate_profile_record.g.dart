// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_profile_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CandidateProfileRecord> _$candidateProfileRecordSerializer =
    new _$CandidateProfileRecordSerializer();

class _$CandidateProfileRecordSerializer
    implements StructuredSerializer<CandidateProfileRecord> {
  @override
  final Iterable<Type> types = const [
    CandidateProfileRecord,
    _$CandidateProfileRecord
  ];
  @override
  final String wireName = 'CandidateProfileRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CandidateProfileRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.joinedDate;
    if (value != null) {
      result
        ..add('joined_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fullname;
    if (value != null) {
      result
        ..add('fullname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experience;
    if (value != null) {
      result
        ..add('experience')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.positionTitle;
    if (value != null) {
      result
        ..add('position_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileDesc;
    if (value != null) {
      result
        ..add('profile_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
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
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
  CandidateProfileRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CandidateProfileRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'joined_date':
          result.joinedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'experience':
          result.experience = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'position_title':
          result.positionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_desc':
          result.profileDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
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

class _$CandidateProfileRecord extends CandidateProfileRecord {
  @override
  final String displayName;
  @override
  final String email;
  @override
  final DateTime joinedDate;
  @override
  final String fullname;
  @override
  final double experience;
  @override
  final String positionTitle;
  @override
  final String profileDesc;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final DocumentReference<Object> reference;

  factory _$CandidateProfileRecord(
          [void Function(CandidateProfileRecordBuilder) updates]) =>
      (new CandidateProfileRecordBuilder()..update(updates)).build();

  _$CandidateProfileRecord._(
      {this.displayName,
      this.email,
      this.joinedDate,
      this.fullname,
      this.experience,
      this.positionTitle,
      this.profileDesc,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  CandidateProfileRecord rebuild(
          void Function(CandidateProfileRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CandidateProfileRecordBuilder toBuilder() =>
      new CandidateProfileRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CandidateProfileRecord &&
        displayName == other.displayName &&
        email == other.email &&
        joinedDate == other.joinedDate &&
        fullname == other.fullname &&
        experience == other.experience &&
        positionTitle == other.positionTitle &&
        profileDesc == other.profileDesc &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
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
                                            $jc($jc(0, displayName.hashCode),
                                                email.hashCode),
                                            joinedDate.hashCode),
                                        fullname.hashCode),
                                    experience.hashCode),
                                positionTitle.hashCode),
                            profileDesc.hashCode),
                        photoUrl.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CandidateProfileRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('joinedDate', joinedDate)
          ..add('fullname', fullname)
          ..add('experience', experience)
          ..add('positionTitle', positionTitle)
          ..add('profileDesc', profileDesc)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('reference', reference))
        .toString();
  }
}

class CandidateProfileRecordBuilder
    implements Builder<CandidateProfileRecord, CandidateProfileRecordBuilder> {
  _$CandidateProfileRecord _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DateTime _joinedDate;
  DateTime get joinedDate => _$this._joinedDate;
  set joinedDate(DateTime joinedDate) => _$this._joinedDate = joinedDate;

  String _fullname;
  String get fullname => _$this._fullname;
  set fullname(String fullname) => _$this._fullname = fullname;

  double _experience;
  double get experience => _$this._experience;
  set experience(double experience) => _$this._experience = experience;

  String _positionTitle;
  String get positionTitle => _$this._positionTitle;
  set positionTitle(String positionTitle) =>
      _$this._positionTitle = positionTitle;

  String _profileDesc;
  String get profileDesc => _$this._profileDesc;
  set profileDesc(String profileDesc) => _$this._profileDesc = profileDesc;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CandidateProfileRecordBuilder() {
    CandidateProfileRecord._initializeBuilder(this);
  }

  CandidateProfileRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _joinedDate = $v.joinedDate;
      _fullname = $v.fullname;
      _experience = $v.experience;
      _positionTitle = $v.positionTitle;
      _profileDesc = $v.profileDesc;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CandidateProfileRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CandidateProfileRecord;
  }

  @override
  void update(void Function(CandidateProfileRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CandidateProfileRecord build() {
    final _$result = _$v ??
        new _$CandidateProfileRecord._(
            displayName: displayName,
            email: email,
            joinedDate: joinedDate,
            fullname: fullname,
            experience: experience,
            positionTitle: positionTitle,
            profileDesc: profileDesc,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
