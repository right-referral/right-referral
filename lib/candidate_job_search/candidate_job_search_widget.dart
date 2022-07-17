import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../candidate_job_search_results/candidate_job_search_results_widget.dart';
import '../components/candidate_job_results_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CandidateJobSearchWidget extends StatefulWidget {
  const CandidateJobSearchWidget({
    Key key,
    this.uid,
    this.location,
    this.company,
    this.domain,
    this.industry,
    this.jobTitle,
  }) : super(key: key);

  final String uid;
  final String location;
  final String company;
  final String domain;
  final String industry;
  final String jobTitle;

  @override
  _CandidateJobSearchWidgetState createState() =>
      _CandidateJobSearchWidgetState();
}

class _CandidateJobSearchWidgetState extends State<CandidateJobSearchWidget> {
  String companyDropDownValue;
  String locationDropDownValue;
  String domainDropDownValue;
  String industryDropDownValue;
  String jobtitleDropDownValue;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey4 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: AuthUserStreamWidget(
          child: Text(
            'Hello ${currentUserDisplayName}, Search for a job',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).background,
                ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Form(
                        key: formKey5,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Text(
                          'Location',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      StreamBuilder<List<JobPostsRecord>>(
                        stream: queryJobPostsRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitThreeBounce(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<JobPostsRecord>
                              locationDropDownJobPostsRecordList =
                              snapshot.data;
                          return FlutterFlowDropDown(
                            options: locationDropDownJobPostsRecordList
                                .map((e) => e.hiringLocation)
                                .toList()
                                .toList(),
                            onChanged: (val) =>
                                setState(() => locationDropDownValue = val),
                            width: 180,
                            height: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                    ),
                            hintText: 'Please select...',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Form(
                        key: formKey3,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Text(
                          'Company',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      StreamBuilder<List<JobPostsRecord>>(
                        stream: queryJobPostsRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitThreeBounce(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<JobPostsRecord>
                              companyDropDownJobPostsRecordList = snapshot.data;
                          return FlutterFlowDropDown(
                            options: companyDropDownJobPostsRecordList
                                .map((e) => e.companyName)
                                .toList()
                                .toList(),
                            onChanged: (val) =>
                                setState(() => companyDropDownValue = val),
                            width: 180,
                            height: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                    ),
                            hintText: 'Please select...',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Form(
                        key: formKey2,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Text(
                          'Domain',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      StreamBuilder<List<JobPostsRecord>>(
                        stream: queryJobPostsRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitThreeBounce(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<JobPostsRecord>
                              domainDropDownJobPostsRecordList = snapshot.data;
                          return FlutterFlowDropDown(
                            options: domainDropDownJobPostsRecordList
                                .map((e) => e.domain)
                                .toList()
                                .toList(),
                            onChanged: (val) =>
                                setState(() => domainDropDownValue = val),
                            width: 180,
                            height: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                    ),
                            hintText: 'Please select...',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Form(
                        key: formKey4,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Text(
                          'Industry',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      StreamBuilder<List<JobPostsRecord>>(
                        stream: queryJobPostsRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitThreeBounce(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<JobPostsRecord>
                              industryDropDownJobPostsRecordList =
                              snapshot.data;
                          return FlutterFlowDropDown(
                            options: industryDropDownJobPostsRecordList
                                .map((e) => e.industryType)
                                .toList()
                                .toList(),
                            onChanged: (val) =>
                                setState(() => industryDropDownValue = val),
                            width: 180,
                            height: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                    ),
                            hintText: 'Please select...',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Form(
                        key: formKey1,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Text(
                          'Job Title',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      StreamBuilder<List<JobPostsRecord>>(
                        stream: queryJobPostsRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitThreeBounce(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<JobPostsRecord>
                              jobtitleDropDownJobPostsRecordList =
                              snapshot.data;
                          return FlutterFlowDropDown(
                            options: jobtitleDropDownJobPostsRecordList
                                .map((e) => e.jobTitle)
                                .toList()
                                .toList(),
                            onChanged: (val) =>
                                setState(() => jobtitleDropDownValue = val),
                            width: 180,
                            height: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                    ),
                            hintText: 'Please select...',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor:
                              FlutterFlowTheme.of(context).grayIcon400,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.6,
                                child: CandidateJobResultsWidget(
                                  location: locationDropDownValue,
                                  company: companyDropDownValue,
                                  domain: domainDropDownValue,
                                  industry: industryDropDownValue,
                                  jobTitle: jobtitleDropDownValue,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      text: 'Search',
                      options: FFButtonOptions(
                        width: 80,
                        height: 20,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (('1') == '2')
                      FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CandidateJobSearchResultsWidget(
                                location: locationDropDownValue,
                                company: companyDropDownValue,
                                domain: domainDropDownValue,
                                industry: industryDropDownValue,
                                jobTitle: jobtitleDropDownValue,
                              ),
                            ),
                          );
                        },
                        text: 'Button',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
