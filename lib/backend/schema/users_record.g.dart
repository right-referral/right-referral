// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
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
    value = object.password;
    if (value != null) {
      result
        ..add('password')
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
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.positionTitle;
    if (value != null) {
      result
        ..add('positionTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experienceLevel;
    if (value != null) {
      result
        ..add('experienceLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentCompany;
    if (value != null) {
      result
        ..add('currentCompany')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likedPosts;
    if (value != null) {
      result
        ..add('likedPosts')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.profileType;
    if (value != null) {
      result
        ..add('profileType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.isGuest;
    if (value != null) {
      result
        ..add('isGuest')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDescription;
    if (value != null) {
      result
        ..add('short_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.registrationDatetime;
    if (value != null) {
      result
        ..add('registration_datetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.secondaryEmail;
    if (value != null) {
      result
        ..add('secondary_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentLocation;
    if (value != null) {
      result
        ..add('current_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activeFlag;
    if (value != null) {
      result
        ..add('active_flag')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subscriptionStatus;
    if (value != null) {
      result
        ..add('subscription_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subscriptionType;
    if (value != null) {
      result
        ..add('subscription_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subscriptionStartDate;
    if (value != null) {
      result
        ..add('subscription_start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.subscriptionEndDate;
    if (value != null) {
      result
        ..add('subscription_end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.linkdlnUrl;
    if (value != null) {
      result
        ..add('linkdln_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.website;
    if (value != null) {
      result
        ..add('website')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.github;
    if (value != null) {
      result
        ..add('github')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.viewType;
    if (value != null) {
      result
        ..add('view_type')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

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
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'positionTitle':
          result.positionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'experienceLevel':
          result.experienceLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currentCompany':
          result.currentCompany = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likedPosts':
          result.likedPosts = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'profileType':
          result.profileType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'isGuest':
          result.isGuest = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'short_description':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'registration_datetime':
          result.registrationDatetime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'secondary_email':
          result.secondaryEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_location':
          result.currentLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active_flag':
          result.activeFlag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscription_status':
          result.subscriptionStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscription_type':
          result.subscriptionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscription_start_date':
          result.subscriptionStartDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'subscription_end_date':
          result.subscriptionEndDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'linkdln_url':
          result.linkdlnUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'github':
          result.github = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'view_type':
          result.viewType = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String password;
  @override
  final DateTime createdTime;
  @override
  final String photoUrl;
  @override
  final String bio;
  @override
  final String positionTitle;
  @override
  final String experienceLevel;
  @override
  final String currentCompany;
  @override
  final String uid;
  @override
  final String phoneNumber;
  @override
  final bool likedPosts;
  @override
  final String profileType;
  @override
  final String salary;
  @override
  final DocumentReference<Object> company;
  @override
  final bool isGuest;
  @override
  final String fullName;
  @override
  final String shortDescription;
  @override
  final DateTime registrationDatetime;
  @override
  final String secondaryEmail;
  @override
  final String title;
  @override
  final String currentLocation;
  @override
  final String activeFlag;
  @override
  final String subscriptionStatus;
  @override
  final String subscriptionType;
  @override
  final DateTime subscriptionStartDate;
  @override
  final DateTime subscriptionEndDate;
  @override
  final String linkdlnUrl;
  @override
  final String website;
  @override
  final String github;
  @override
  final String viewType;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.displayName,
      this.email,
      this.password,
      this.createdTime,
      this.photoUrl,
      this.bio,
      this.positionTitle,
      this.experienceLevel,
      this.currentCompany,
      this.uid,
      this.phoneNumber,
      this.likedPosts,
      this.profileType,
      this.salary,
      this.company,
      this.isGuest,
      this.fullName,
      this.shortDescription,
      this.registrationDatetime,
      this.secondaryEmail,
      this.title,
      this.currentLocation,
      this.activeFlag,
      this.subscriptionStatus,
      this.subscriptionType,
      this.subscriptionStartDate,
      this.subscriptionEndDate,
      this.linkdlnUrl,
      this.website,
      this.github,
      this.viewType,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        displayName == other.displayName &&
        email == other.email &&
        password == other.password &&
        createdTime == other.createdTime &&
        photoUrl == other.photoUrl &&
        bio == other.bio &&
        positionTitle == other.positionTitle &&
        experienceLevel == other.experienceLevel &&
        currentCompany == other.currentCompany &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        likedPosts == other.likedPosts &&
        profileType == other.profileType &&
        salary == other.salary &&
        company == other.company &&
        isGuest == other.isGuest &&
        fullName == other.fullName &&
        shortDescription == other.shortDescription &&
        registrationDatetime == other.registrationDatetime &&
        secondaryEmail == other.secondaryEmail &&
        title == other.title &&
        currentLocation == other.currentLocation &&
        activeFlag == other.activeFlag &&
        subscriptionStatus == other.subscriptionStatus &&
        subscriptionType == other.subscriptionType &&
        subscriptionStartDate == other.subscriptionStartDate &&
        subscriptionEndDate == other.subscriptionEndDate &&
        linkdlnUrl == other.linkdlnUrl &&
        website == other.website &&
        github == other.github &&
        viewType == other.viewType &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, displayName.hashCode), email.hashCode), password.hashCode), createdTime.hashCode), photoUrl.hashCode), bio.hashCode), positionTitle.hashCode), experienceLevel.hashCode), currentCompany.hashCode), uid.hashCode), phoneNumber.hashCode), likedPosts.hashCode), profileType.hashCode),
                                                                                salary.hashCode),
                                                                            company.hashCode),
                                                                        isGuest.hashCode),
                                                                    fullName.hashCode),
                                                                shortDescription.hashCode),
                                                            registrationDatetime.hashCode),
                                                        secondaryEmail.hashCode),
                                                    title.hashCode),
                                                currentLocation.hashCode),
                                            activeFlag.hashCode),
                                        subscriptionStatus.hashCode),
                                    subscriptionType.hashCode),
                                subscriptionStartDate.hashCode),
                            subscriptionEndDate.hashCode),
                        linkdlnUrl.hashCode),
                    website.hashCode),
                github.hashCode),
            viewType.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('password', password)
          ..add('createdTime', createdTime)
          ..add('photoUrl', photoUrl)
          ..add('bio', bio)
          ..add('positionTitle', positionTitle)
          ..add('experienceLevel', experienceLevel)
          ..add('currentCompany', currentCompany)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('likedPosts', likedPosts)
          ..add('profileType', profileType)
          ..add('salary', salary)
          ..add('company', company)
          ..add('isGuest', isGuest)
          ..add('fullName', fullName)
          ..add('shortDescription', shortDescription)
          ..add('registrationDatetime', registrationDatetime)
          ..add('secondaryEmail', secondaryEmail)
          ..add('title', title)
          ..add('currentLocation', currentLocation)
          ..add('activeFlag', activeFlag)
          ..add('subscriptionStatus', subscriptionStatus)
          ..add('subscriptionType', subscriptionType)
          ..add('subscriptionStartDate', subscriptionStartDate)
          ..add('subscriptionEndDate', subscriptionEndDate)
          ..add('linkdlnUrl', linkdlnUrl)
          ..add('website', website)
          ..add('github', github)
          ..add('viewType', viewType)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _positionTitle;
  String get positionTitle => _$this._positionTitle;
  set positionTitle(String positionTitle) =>
      _$this._positionTitle = positionTitle;

  String _experienceLevel;
  String get experienceLevel => _$this._experienceLevel;
  set experienceLevel(String experienceLevel) =>
      _$this._experienceLevel = experienceLevel;

  String _currentCompany;
  String get currentCompany => _$this._currentCompany;
  set currentCompany(String currentCompany) =>
      _$this._currentCompany = currentCompany;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool _likedPosts;
  bool get likedPosts => _$this._likedPosts;
  set likedPosts(bool likedPosts) => _$this._likedPosts = likedPosts;

  String _profileType;
  String get profileType => _$this._profileType;
  set profileType(String profileType) => _$this._profileType = profileType;

  String _salary;
  String get salary => _$this._salary;
  set salary(String salary) => _$this._salary = salary;

  DocumentReference<Object> _company;
  DocumentReference<Object> get company => _$this._company;
  set company(DocumentReference<Object> company) => _$this._company = company;

  bool _isGuest;
  bool get isGuest => _$this._isGuest;
  set isGuest(bool isGuest) => _$this._isGuest = isGuest;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _shortDescription;
  String get shortDescription => _$this._shortDescription;
  set shortDescription(String shortDescription) =>
      _$this._shortDescription = shortDescription;

  DateTime _registrationDatetime;
  DateTime get registrationDatetime => _$this._registrationDatetime;
  set registrationDatetime(DateTime registrationDatetime) =>
      _$this._registrationDatetime = registrationDatetime;

  String _secondaryEmail;
  String get secondaryEmail => _$this._secondaryEmail;
  set secondaryEmail(String secondaryEmail) =>
      _$this._secondaryEmail = secondaryEmail;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _currentLocation;
  String get currentLocation => _$this._currentLocation;
  set currentLocation(String currentLocation) =>
      _$this._currentLocation = currentLocation;

  String _activeFlag;
  String get activeFlag => _$this._activeFlag;
  set activeFlag(String activeFlag) => _$this._activeFlag = activeFlag;

  String _subscriptionStatus;
  String get subscriptionStatus => _$this._subscriptionStatus;
  set subscriptionStatus(String subscriptionStatus) =>
      _$this._subscriptionStatus = subscriptionStatus;

  String _subscriptionType;
  String get subscriptionType => _$this._subscriptionType;
  set subscriptionType(String subscriptionType) =>
      _$this._subscriptionType = subscriptionType;

  DateTime _subscriptionStartDate;
  DateTime get subscriptionStartDate => _$this._subscriptionStartDate;
  set subscriptionStartDate(DateTime subscriptionStartDate) =>
      _$this._subscriptionStartDate = subscriptionStartDate;

  DateTime _subscriptionEndDate;
  DateTime get subscriptionEndDate => _$this._subscriptionEndDate;
  set subscriptionEndDate(DateTime subscriptionEndDate) =>
      _$this._subscriptionEndDate = subscriptionEndDate;

  String _linkdlnUrl;
  String get linkdlnUrl => _$this._linkdlnUrl;
  set linkdlnUrl(String linkdlnUrl) => _$this._linkdlnUrl = linkdlnUrl;

  String _website;
  String get website => _$this._website;
  set website(String website) => _$this._website = website;

  String _github;
  String get github => _$this._github;
  set github(String github) => _$this._github = github;

  String _viewType;
  String get viewType => _$this._viewType;
  set viewType(String viewType) => _$this._viewType = viewType;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _password = $v.password;
      _createdTime = $v.createdTime;
      _photoUrl = $v.photoUrl;
      _bio = $v.bio;
      _positionTitle = $v.positionTitle;
      _experienceLevel = $v.experienceLevel;
      _currentCompany = $v.currentCompany;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _likedPosts = $v.likedPosts;
      _profileType = $v.profileType;
      _salary = $v.salary;
      _company = $v.company;
      _isGuest = $v.isGuest;
      _fullName = $v.fullName;
      _shortDescription = $v.shortDescription;
      _registrationDatetime = $v.registrationDatetime;
      _secondaryEmail = $v.secondaryEmail;
      _title = $v.title;
      _currentLocation = $v.currentLocation;
      _activeFlag = $v.activeFlag;
      _subscriptionStatus = $v.subscriptionStatus;
      _subscriptionType = $v.subscriptionType;
      _subscriptionStartDate = $v.subscriptionStartDate;
      _subscriptionEndDate = $v.subscriptionEndDate;
      _linkdlnUrl = $v.linkdlnUrl;
      _website = $v.website;
      _github = $v.github;
      _viewType = $v.viewType;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            displayName: displayName,
            email: email,
            password: password,
            createdTime: createdTime,
            photoUrl: photoUrl,
            bio: bio,
            positionTitle: positionTitle,
            experienceLevel: experienceLevel,
            currentCompany: currentCompany,
            uid: uid,
            phoneNumber: phoneNumber,
            likedPosts: likedPosts,
            profileType: profileType,
            salary: salary,
            company: company,
            isGuest: isGuest,
            fullName: fullName,
            shortDescription: shortDescription,
            registrationDatetime: registrationDatetime,
            secondaryEmail: secondaryEmail,
            title: title,
            currentLocation: currentLocation,
            activeFlag: activeFlag,
            subscriptionStatus: subscriptionStatus,
            subscriptionType: subscriptionType,
            subscriptionStartDate: subscriptionStartDate,
            subscriptionEndDate: subscriptionEndDate,
            linkdlnUrl: linkdlnUrl,
            website: website,
            github: github,
            viewType: viewType,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
