// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobPostsRecord> _$jobPostsRecordSerializer =
    new _$JobPostsRecordSerializer();

class _$JobPostsRecordSerializer
    implements StructuredSerializer<JobPostsRecord> {
  @override
  final Iterable<Type> types = const [JobPostsRecord, _$JobPostsRecord];
  @override
  final String wireName = 'JobPostsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, JobPostsRecord object,
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
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('company_name')
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
    value = object.companyLogo;
    if (value != null) {
      result
        ..add('company_logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aboutCompany;
    if (value != null) {
      result
        ..add('about_company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobDesc;
    if (value != null) {
      result
        ..add('job_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experienceMin;
    if (value != null) {
      result
        ..add('experience_min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.experienceMax;
    if (value != null) {
      result
        ..add('experience_max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.openingsNum;
    if (value != null) {
      result
        ..add('openings_num')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hiringLocation;
    if (value != null) {
      result
        ..add('hiring_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.salaryMin;
    if (value != null) {
      result
        ..add('salary_min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.salaryMax;
    if (value != null) {
      result
        ..add('salary_max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.keySkillsMustHave;
    if (value != null) {
      result
        ..add('key_skills_must_have')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.skillsGoodToHave;
    if (value != null) {
      result
        ..add('skills_good_to_have')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.industryType;
    if (value != null) {
      result
        ..add('industry_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.domain;
    if (value != null) {
      result
        ..add('domain')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fucntionalArea;
    if (value != null) {
      result
        ..add('fucntional_area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.employmentType;
    if (value != null) {
      result
        ..add('employment_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.educationRequirement;
    if (value != null) {
      result
        ..add('education_requirement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postedOn;
    if (value != null) {
      result
        ..add('posted_on')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.validity;
    if (value != null) {
      result
        ..add('validity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.benefits;
    if (value != null) {
      result
        ..add('benefits')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobTimings;
    if (value != null) {
      result
        ..add('job_timings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jobid;
    if (value != null) {
      result
        ..add('jobid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.positionsOpen;
    if (value != null) {
      result
        ..add('positions_open')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  JobPostsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobPostsRecordBuilder();

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
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'company_name':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_title':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_logo':
          result.companyLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'about_company':
          result.aboutCompany = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_desc':
          result.jobDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'experience_min':
          result.experienceMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'experience_max':
          result.experienceMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'openings_num':
          result.openingsNum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'hiring_location':
          result.hiringLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'salary_min':
          result.salaryMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'salary_max':
          result.salaryMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'key_skills_must_have':
          result.keySkillsMustHave = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skills_good_to_have':
          result.skillsGoodToHave = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'industry_type':
          result.industryType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'domain':
          result.domain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fucntional_area':
          result.fucntionalArea = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'employment_type':
          result.employmentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'education_requirement':
          result.educationRequirement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'posted_on':
          result.postedOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'validity':
          result.validity = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'benefits':
          result.benefits = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_timings':
          result.jobTimings = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobid':
          result.jobid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'positions_open':
          result.positionsOpen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$JobPostsRecord extends JobPostsRecord {
  @override
  final String email;
  @override
  final String uid;
  @override
  final DocumentReference<Object> user;
  @override
  final String companyName;
  @override
  final String jobTitle;
  @override
  final String companyLogo;
  @override
  final String aboutCompany;
  @override
  final String jobDesc;
  @override
  final double experienceMin;
  @override
  final double experienceMax;
  @override
  final int openingsNum;
  @override
  final String hiringLocation;
  @override
  final double salaryMin;
  @override
  final double salaryMax;
  @override
  final String keySkillsMustHave;
  @override
  final String skillsGoodToHave;
  @override
  final String industryType;
  @override
  final String domain;
  @override
  final String fucntionalArea;
  @override
  final String role;
  @override
  final String employmentType;
  @override
  final String educationRequirement;
  @override
  final DateTime postedOn;
  @override
  final DateTime validity;
  @override
  final String benefits;
  @override
  final String jobTimings;
  @override
  final String jobid;
  @override
  final int positionsOpen;
  @override
  final DocumentReference<Object> reference;

  factory _$JobPostsRecord([void Function(JobPostsRecordBuilder) updates]) =>
      (new JobPostsRecordBuilder()..update(updates)).build();

  _$JobPostsRecord._(
      {this.email,
      this.uid,
      this.user,
      this.companyName,
      this.jobTitle,
      this.companyLogo,
      this.aboutCompany,
      this.jobDesc,
      this.experienceMin,
      this.experienceMax,
      this.openingsNum,
      this.hiringLocation,
      this.salaryMin,
      this.salaryMax,
      this.keySkillsMustHave,
      this.skillsGoodToHave,
      this.industryType,
      this.domain,
      this.fucntionalArea,
      this.role,
      this.employmentType,
      this.educationRequirement,
      this.postedOn,
      this.validity,
      this.benefits,
      this.jobTimings,
      this.jobid,
      this.positionsOpen,
      this.reference})
      : super._();

  @override
  JobPostsRecord rebuild(void Function(JobPostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobPostsRecordBuilder toBuilder() =>
      new JobPostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobPostsRecord &&
        email == other.email &&
        uid == other.uid &&
        user == other.user &&
        companyName == other.companyName &&
        jobTitle == other.jobTitle &&
        companyLogo == other.companyLogo &&
        aboutCompany == other.aboutCompany &&
        jobDesc == other.jobDesc &&
        experienceMin == other.experienceMin &&
        experienceMax == other.experienceMax &&
        openingsNum == other.openingsNum &&
        hiringLocation == other.hiringLocation &&
        salaryMin == other.salaryMin &&
        salaryMax == other.salaryMax &&
        keySkillsMustHave == other.keySkillsMustHave &&
        skillsGoodToHave == other.skillsGoodToHave &&
        industryType == other.industryType &&
        domain == other.domain &&
        fucntionalArea == other.fucntionalArea &&
        role == other.role &&
        employmentType == other.employmentType &&
        educationRequirement == other.educationRequirement &&
        postedOn == other.postedOn &&
        validity == other.validity &&
        benefits == other.benefits &&
        jobTimings == other.jobTimings &&
        jobid == other.jobid &&
        positionsOpen == other.positionsOpen &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, email.hashCode), uid.hashCode), user.hashCode), companyName.hashCode), jobTitle.hashCode), companyLogo.hashCode), aboutCompany.hashCode), jobDesc.hashCode), experienceMin.hashCode), experienceMax.hashCode),
                                                                                openingsNum.hashCode),
                                                                            hiringLocation.hashCode),
                                                                        salaryMin.hashCode),
                                                                    salaryMax.hashCode),
                                                                keySkillsMustHave.hashCode),
                                                            skillsGoodToHave.hashCode),
                                                        industryType.hashCode),
                                                    domain.hashCode),
                                                fucntionalArea.hashCode),
                                            role.hashCode),
                                        employmentType.hashCode),
                                    educationRequirement.hashCode),
                                postedOn.hashCode),
                            validity.hashCode),
                        benefits.hashCode),
                    jobTimings.hashCode),
                jobid.hashCode),
            positionsOpen.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JobPostsRecord')
          ..add('email', email)
          ..add('uid', uid)
          ..add('user', user)
          ..add('companyName', companyName)
          ..add('jobTitle', jobTitle)
          ..add('companyLogo', companyLogo)
          ..add('aboutCompany', aboutCompany)
          ..add('jobDesc', jobDesc)
          ..add('experienceMin', experienceMin)
          ..add('experienceMax', experienceMax)
          ..add('openingsNum', openingsNum)
          ..add('hiringLocation', hiringLocation)
          ..add('salaryMin', salaryMin)
          ..add('salaryMax', salaryMax)
          ..add('keySkillsMustHave', keySkillsMustHave)
          ..add('skillsGoodToHave', skillsGoodToHave)
          ..add('industryType', industryType)
          ..add('domain', domain)
          ..add('fucntionalArea', fucntionalArea)
          ..add('role', role)
          ..add('employmentType', employmentType)
          ..add('educationRequirement', educationRequirement)
          ..add('postedOn', postedOn)
          ..add('validity', validity)
          ..add('benefits', benefits)
          ..add('jobTimings', jobTimings)
          ..add('jobid', jobid)
          ..add('positionsOpen', positionsOpen)
          ..add('reference', reference))
        .toString();
  }
}

class JobPostsRecordBuilder
    implements Builder<JobPostsRecord, JobPostsRecordBuilder> {
  _$JobPostsRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _companyName;
  String get companyName => _$this._companyName;
  set companyName(String companyName) => _$this._companyName = companyName;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  String _companyLogo;
  String get companyLogo => _$this._companyLogo;
  set companyLogo(String companyLogo) => _$this._companyLogo = companyLogo;

  String _aboutCompany;
  String get aboutCompany => _$this._aboutCompany;
  set aboutCompany(String aboutCompany) => _$this._aboutCompany = aboutCompany;

  String _jobDesc;
  String get jobDesc => _$this._jobDesc;
  set jobDesc(String jobDesc) => _$this._jobDesc = jobDesc;

  double _experienceMin;
  double get experienceMin => _$this._experienceMin;
  set experienceMin(double experienceMin) =>
      _$this._experienceMin = experienceMin;

  double _experienceMax;
  double get experienceMax => _$this._experienceMax;
  set experienceMax(double experienceMax) =>
      _$this._experienceMax = experienceMax;

  int _openingsNum;
  int get openingsNum => _$this._openingsNum;
  set openingsNum(int openingsNum) => _$this._openingsNum = openingsNum;

  String _hiringLocation;
  String get hiringLocation => _$this._hiringLocation;
  set hiringLocation(String hiringLocation) =>
      _$this._hiringLocation = hiringLocation;

  double _salaryMin;
  double get salaryMin => _$this._salaryMin;
  set salaryMin(double salaryMin) => _$this._salaryMin = salaryMin;

  double _salaryMax;
  double get salaryMax => _$this._salaryMax;
  set salaryMax(double salaryMax) => _$this._salaryMax = salaryMax;

  String _keySkillsMustHave;
  String get keySkillsMustHave => _$this._keySkillsMustHave;
  set keySkillsMustHave(String keySkillsMustHave) =>
      _$this._keySkillsMustHave = keySkillsMustHave;

  String _skillsGoodToHave;
  String get skillsGoodToHave => _$this._skillsGoodToHave;
  set skillsGoodToHave(String skillsGoodToHave) =>
      _$this._skillsGoodToHave = skillsGoodToHave;

  String _industryType;
  String get industryType => _$this._industryType;
  set industryType(String industryType) => _$this._industryType = industryType;

  String _domain;
  String get domain => _$this._domain;
  set domain(String domain) => _$this._domain = domain;

  String _fucntionalArea;
  String get fucntionalArea => _$this._fucntionalArea;
  set fucntionalArea(String fucntionalArea) =>
      _$this._fucntionalArea = fucntionalArea;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  String _employmentType;
  String get employmentType => _$this._employmentType;
  set employmentType(String employmentType) =>
      _$this._employmentType = employmentType;

  String _educationRequirement;
  String get educationRequirement => _$this._educationRequirement;
  set educationRequirement(String educationRequirement) =>
      _$this._educationRequirement = educationRequirement;

  DateTime _postedOn;
  DateTime get postedOn => _$this._postedOn;
  set postedOn(DateTime postedOn) => _$this._postedOn = postedOn;

  DateTime _validity;
  DateTime get validity => _$this._validity;
  set validity(DateTime validity) => _$this._validity = validity;

  String _benefits;
  String get benefits => _$this._benefits;
  set benefits(String benefits) => _$this._benefits = benefits;

  String _jobTimings;
  String get jobTimings => _$this._jobTimings;
  set jobTimings(String jobTimings) => _$this._jobTimings = jobTimings;

  String _jobid;
  String get jobid => _$this._jobid;
  set jobid(String jobid) => _$this._jobid = jobid;

  int _positionsOpen;
  int get positionsOpen => _$this._positionsOpen;
  set positionsOpen(int positionsOpen) => _$this._positionsOpen = positionsOpen;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  JobPostsRecordBuilder() {
    JobPostsRecord._initializeBuilder(this);
  }

  JobPostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _uid = $v.uid;
      _user = $v.user;
      _companyName = $v.companyName;
      _jobTitle = $v.jobTitle;
      _companyLogo = $v.companyLogo;
      _aboutCompany = $v.aboutCompany;
      _jobDesc = $v.jobDesc;
      _experienceMin = $v.experienceMin;
      _experienceMax = $v.experienceMax;
      _openingsNum = $v.openingsNum;
      _hiringLocation = $v.hiringLocation;
      _salaryMin = $v.salaryMin;
      _salaryMax = $v.salaryMax;
      _keySkillsMustHave = $v.keySkillsMustHave;
      _skillsGoodToHave = $v.skillsGoodToHave;
      _industryType = $v.industryType;
      _domain = $v.domain;
      _fucntionalArea = $v.fucntionalArea;
      _role = $v.role;
      _employmentType = $v.employmentType;
      _educationRequirement = $v.educationRequirement;
      _postedOn = $v.postedOn;
      _validity = $v.validity;
      _benefits = $v.benefits;
      _jobTimings = $v.jobTimings;
      _jobid = $v.jobid;
      _positionsOpen = $v.positionsOpen;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobPostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobPostsRecord;
  }

  @override
  void update(void Function(JobPostsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JobPostsRecord build() {
    final _$result = _$v ??
        new _$JobPostsRecord._(
            email: email,
            uid: uid,
            user: user,
            companyName: companyName,
            jobTitle: jobTitle,
            companyLogo: companyLogo,
            aboutCompany: aboutCompany,
            jobDesc: jobDesc,
            experienceMin: experienceMin,
            experienceMax: experienceMax,
            openingsNum: openingsNum,
            hiringLocation: hiringLocation,
            salaryMin: salaryMin,
            salaryMax: salaryMax,
            keySkillsMustHave: keySkillsMustHave,
            skillsGoodToHave: skillsGoodToHave,
            industryType: industryType,
            domain: domain,
            fucntionalArea: fucntionalArea,
            role: role,
            employmentType: employmentType,
            educationRequirement: educationRequirement,
            postedOn: postedOn,
            validity: validity,
            benefits: benefits,
            jobTimings: jobTimings,
            jobid: jobid,
            positionsOpen: positionsOpen,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
