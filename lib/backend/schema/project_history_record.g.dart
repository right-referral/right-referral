// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectHistoryRecord> _$projectHistoryRecordSerializer =
    new _$ProjectHistoryRecordSerializer();

class _$ProjectHistoryRecordSerializer
    implements StructuredSerializer<ProjectHistoryRecord> {
  @override
  final Iterable<Type> types = const [
    ProjectHistoryRecord,
    _$ProjectHistoryRecord
  ];
  @override
  final String wireName = 'ProjectHistoryRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectHistoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.projectTitle;
    if (value != null) {
      result
        ..add('project_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectDesc;
    if (value != null) {
      result
        ..add('project_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('company_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roleTitle;
    if (value != null) {
      result
        ..add('role_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roleDesc;
    if (value != null) {
      result
        ..add('role_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.skillsUsed;
    if (value != null) {
      result
        ..add('skills_used')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.referrences;
    if (value != null) {
      result
        ..add('referrences')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appreciations;
    if (value != null) {
      result
        ..add('appreciations')
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
  ProjectHistoryRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectHistoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'project_title':
          result.projectTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project_desc':
          result.projectDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_name':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role_title':
          result.roleTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role_desc':
          result.roleDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skills_used':
          result.skillsUsed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'referrences':
          result.referrences = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'appreciations':
          result.appreciations = serializers.deserialize(value,
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

class _$ProjectHistoryRecord extends ProjectHistoryRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final String projectTitle;
  @override
  final String projectDesc;
  @override
  final String companyName;
  @override
  final String roleTitle;
  @override
  final String roleDesc;
  @override
  final String skillsUsed;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String referrences;
  @override
  final String appreciations;
  @override
  final DocumentReference<Object> reference;

  factory _$ProjectHistoryRecord(
          [void Function(ProjectHistoryRecordBuilder) updates]) =>
      (new ProjectHistoryRecordBuilder()..update(updates)).build();

  _$ProjectHistoryRecord._(
      {this.user,
      this.projectTitle,
      this.projectDesc,
      this.companyName,
      this.roleTitle,
      this.roleDesc,
      this.skillsUsed,
      this.startDate,
      this.endDate,
      this.referrences,
      this.appreciations,
      this.reference})
      : super._();

  @override
  ProjectHistoryRecord rebuild(
          void Function(ProjectHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectHistoryRecordBuilder toBuilder() =>
      new ProjectHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectHistoryRecord &&
        user == other.user &&
        projectTitle == other.projectTitle &&
        projectDesc == other.projectDesc &&
        companyName == other.companyName &&
        roleTitle == other.roleTitle &&
        roleDesc == other.roleDesc &&
        skillsUsed == other.skillsUsed &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        referrences == other.referrences &&
        appreciations == other.appreciations &&
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
                                            $jc($jc(0, user.hashCode),
                                                projectTitle.hashCode),
                                            projectDesc.hashCode),
                                        companyName.hashCode),
                                    roleTitle.hashCode),
                                roleDesc.hashCode),
                            skillsUsed.hashCode),
                        startDate.hashCode),
                    endDate.hashCode),
                referrences.hashCode),
            appreciations.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectHistoryRecord')
          ..add('user', user)
          ..add('projectTitle', projectTitle)
          ..add('projectDesc', projectDesc)
          ..add('companyName', companyName)
          ..add('roleTitle', roleTitle)
          ..add('roleDesc', roleDesc)
          ..add('skillsUsed', skillsUsed)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('referrences', referrences)
          ..add('appreciations', appreciations)
          ..add('reference', reference))
        .toString();
  }
}

class ProjectHistoryRecordBuilder
    implements Builder<ProjectHistoryRecord, ProjectHistoryRecordBuilder> {
  _$ProjectHistoryRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _projectTitle;
  String get projectTitle => _$this._projectTitle;
  set projectTitle(String projectTitle) => _$this._projectTitle = projectTitle;

  String _projectDesc;
  String get projectDesc => _$this._projectDesc;
  set projectDesc(String projectDesc) => _$this._projectDesc = projectDesc;

  String _companyName;
  String get companyName => _$this._companyName;
  set companyName(String companyName) => _$this._companyName = companyName;

  String _roleTitle;
  String get roleTitle => _$this._roleTitle;
  set roleTitle(String roleTitle) => _$this._roleTitle = roleTitle;

  String _roleDesc;
  String get roleDesc => _$this._roleDesc;
  set roleDesc(String roleDesc) => _$this._roleDesc = roleDesc;

  String _skillsUsed;
  String get skillsUsed => _$this._skillsUsed;
  set skillsUsed(String skillsUsed) => _$this._skillsUsed = skillsUsed;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  String _referrences;
  String get referrences => _$this._referrences;
  set referrences(String referrences) => _$this._referrences = referrences;

  String _appreciations;
  String get appreciations => _$this._appreciations;
  set appreciations(String appreciations) =>
      _$this._appreciations = appreciations;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProjectHistoryRecordBuilder() {
    ProjectHistoryRecord._initializeBuilder(this);
  }

  ProjectHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _projectTitle = $v.projectTitle;
      _projectDesc = $v.projectDesc;
      _companyName = $v.companyName;
      _roleTitle = $v.roleTitle;
      _roleDesc = $v.roleDesc;
      _skillsUsed = $v.skillsUsed;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _referrences = $v.referrences;
      _appreciations = $v.appreciations;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectHistoryRecord;
  }

  @override
  void update(void Function(ProjectHistoryRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectHistoryRecord build() {
    final _$result = _$v ??
        new _$ProjectHistoryRecord._(
            user: user,
            projectTitle: projectTitle,
            projectDesc: projectDesc,
            companyName: companyName,
            roleTitle: roleTitle,
            roleDesc: roleDesc,
            skillsUsed: skillsUsed,
            startDate: startDate,
            endDate: endDate,
            referrences: referrences,
            appreciations: appreciations,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
