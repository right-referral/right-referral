import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'job_posts_record.g.dart';

abstract class JobPostsRecord
    implements Built<JobPostsRecord, JobPostsRecordBuilder> {
  static Serializer<JobPostsRecord> get serializer =>
      _$jobPostsRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'company_name')
  String get companyName;

  @nullable
  @BuiltValueField(wireName: 'job_title')
  String get jobTitle;

  @nullable
  @BuiltValueField(wireName: 'company_logo')
  String get companyLogo;

  @nullable
  @BuiltValueField(wireName: 'about_company')
  String get aboutCompany;

  @nullable
  @BuiltValueField(wireName: 'job_desc')
  String get jobDesc;

  @nullable
  @BuiltValueField(wireName: 'experience_min')
  double get experienceMin;

  @nullable
  @BuiltValueField(wireName: 'experience_max')
  double get experienceMax;

  @nullable
  @BuiltValueField(wireName: 'openings_num')
  int get openingsNum;

  @nullable
  @BuiltValueField(wireName: 'hiring_location')
  String get hiringLocation;

  @nullable
  @BuiltValueField(wireName: 'salary_min')
  double get salaryMin;

  @nullable
  @BuiltValueField(wireName: 'salary_max')
  double get salaryMax;

  @nullable
  @BuiltValueField(wireName: 'key_skills_must_have')
  String get keySkillsMustHave;

  @nullable
  @BuiltValueField(wireName: 'skills_good_to_have')
  String get skillsGoodToHave;

  @nullable
  @BuiltValueField(wireName: 'industry_type')
  String get industryType;

  @nullable
  String get domain;

  @nullable
  @BuiltValueField(wireName: 'fucntional_area')
  String get fucntionalArea;

  @nullable
  String get role;

  @nullable
  @BuiltValueField(wireName: 'employment_type')
  String get employmentType;

  @nullable
  @BuiltValueField(wireName: 'education_requirement')
  String get educationRequirement;

  @nullable
  @BuiltValueField(wireName: 'posted_on')
  DateTime get postedOn;

  @nullable
  DateTime get validity;

  @nullable
  String get benefits;

  @nullable
  @BuiltValueField(wireName: 'job_timings')
  String get jobTimings;

  @nullable
  String get jobid;

  @nullable
  @BuiltValueField(wireName: 'positions_open')
  int get positionsOpen;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(JobPostsRecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..companyName = ''
    ..jobTitle = ''
    ..companyLogo = ''
    ..aboutCompany = ''
    ..jobDesc = ''
    ..experienceMin = 0.0
    ..experienceMax = 0.0
    ..openingsNum = 0
    ..hiringLocation = ''
    ..salaryMin = 0.0
    ..salaryMax = 0.0
    ..keySkillsMustHave = ''
    ..skillsGoodToHave = ''
    ..industryType = ''
    ..domain = ''
    ..fucntionalArea = ''
    ..role = ''
    ..employmentType = ''
    ..educationRequirement = ''
    ..benefits = ''
    ..jobTimings = ''
    ..jobid = ''
    ..positionsOpen = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobPosts');

  static Stream<JobPostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<JobPostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static JobPostsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      JobPostsRecord(
        (c) => c
          ..email = snapshot.data['email']
          ..uid = snapshot.data['uid']
          ..user = safeGet(() => toRef(snapshot.data['user']))
          ..companyName = snapshot.data['company_name']
          ..jobTitle = snapshot.data['job_title']
          ..companyLogo = snapshot.data['company_logo']
          ..aboutCompany = snapshot.data['about_company']
          ..jobDesc = snapshot.data['job_desc']
          ..experienceMin = snapshot.data['experience_min']?.toDouble()
          ..experienceMax = snapshot.data['experience_max']?.toDouble()
          ..openingsNum = snapshot.data['openings_num']?.round()
          ..hiringLocation = snapshot.data['hiring_location']
          ..salaryMin = snapshot.data['salary_min']?.toDouble()
          ..salaryMax = snapshot.data['salary_max']?.toDouble()
          ..keySkillsMustHave = snapshot.data['key_skills_must_have']
          ..skillsGoodToHave = snapshot.data['skills_good_to_have']
          ..industryType = snapshot.data['industry_type']
          ..domain = snapshot.data['domain']
          ..fucntionalArea = snapshot.data['fucntional_area']
          ..role = snapshot.data['role']
          ..employmentType = snapshot.data['employment_type']
          ..educationRequirement = snapshot.data['education_requirement']
          ..postedOn = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['posted_on']))
          ..validity = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['validity']))
          ..benefits = snapshot.data['benefits']
          ..jobTimings = snapshot.data['job_timings']
          ..jobid = snapshot.data['jobid']
          ..positionsOpen = snapshot.data['positions_open']?.round()
          ..reference = JobPostsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<JobPostsRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'jobPosts',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  JobPostsRecord._();
  factory JobPostsRecord([void Function(JobPostsRecordBuilder) updates]) =
      _$JobPostsRecord;

  static JobPostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createJobPostsRecordData({
  String email,
  String uid,
  DocumentReference user,
  String companyName,
  String jobTitle,
  String companyLogo,
  String aboutCompany,
  String jobDesc,
  double experienceMin,
  double experienceMax,
  int openingsNum,
  String hiringLocation,
  double salaryMin,
  double salaryMax,
  String keySkillsMustHave,
  String skillsGoodToHave,
  String industryType,
  String domain,
  String fucntionalArea,
  String role,
  String employmentType,
  String educationRequirement,
  DateTime postedOn,
  DateTime validity,
  String benefits,
  String jobTimings,
  String jobid,
  int positionsOpen,
}) =>
    serializers.toFirestore(
        JobPostsRecord.serializer,
        JobPostsRecord((j) => j
          ..email = email
          ..uid = uid
          ..user = user
          ..companyName = companyName
          ..jobTitle = jobTitle
          ..companyLogo = companyLogo
          ..aboutCompany = aboutCompany
          ..jobDesc = jobDesc
          ..experienceMin = experienceMin
          ..experienceMax = experienceMax
          ..openingsNum = openingsNum
          ..hiringLocation = hiringLocation
          ..salaryMin = salaryMin
          ..salaryMax = salaryMax
          ..keySkillsMustHave = keySkillsMustHave
          ..skillsGoodToHave = skillsGoodToHave
          ..industryType = industryType
          ..domain = domain
          ..fucntionalArea = fucntionalArea
          ..role = role
          ..employmentType = employmentType
          ..educationRequirement = educationRequirement
          ..postedOn = postedOn
          ..validity = validity
          ..benefits = benefits
          ..jobTimings = jobTimings
          ..jobid = jobid
          ..positionsOpen = positionsOpen));
