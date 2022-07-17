import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../candidate_landing_page/candidate_landing_page_widget.dart';
import '../candidate_view_applied_job_details/candidate_view_applied_job_details_widget.dart';
import '../components/candidate_chk_application_status_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CandidateViewAllAppliedJobsWidget extends StatefulWidget {
  const CandidateViewAllAppliedJobsWidget({Key key}) : super(key: key);

  @override
  _CandidateViewAllAppliedJobsWidgetState createState() =>
      _CandidateViewAllAppliedJobsWidgetState();
}

class _CandidateViewAllAppliedJobsWidgetState
    extends State<CandidateViewAllAppliedJobsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CandidateLandingPageWidget(),
                ),
              );
            },
            child: Text(
              'Go Back',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).background,
                  ),
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
              child: StreamBuilder<List<AppliedJobsRecord>>(
                stream: queryAppliedJobsRecord(
                  queryBuilder: (appliedJobsRecord) => appliedJobsRecord
                      .where('candidate_emailid', isEqualTo: currentUserEmail),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: SpinKitThreeBounce(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          size: 50,
                        ),
                      ),
                    );
                  }
                  List<AppliedJobsRecord> listViewAppliedJobsRecordList =
                      snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewAppliedJobsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewAppliedJobsRecord =
                          listViewAppliedJobsRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x430F1113),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Applied on - ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .darkText,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Text(
                                      listViewAppliedJobsRecord.appliedOnDt
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Company - ',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkText,
                                              fontSize: 14,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      listViewAppliedJobsRecord.company,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Job Title - ',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkText,
                                              fontSize: 14,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      listViewAppliedJobsRecord.jobTitle,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Referrer Status - ',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkText,
                                              fontSize: 14,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      listViewAppliedJobsRecord
                                          .referrerAcceptanceStatus,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        'Recruiter Status - ',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkText,
                                              fontSize: 14,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      listViewAppliedJobsRecord
                                          .recruiterAcceptanceStatus,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CandidateViewAppliedJobDetailsWidget(
                                              jobidParameter:
                                                  listViewAppliedJobsRecord
                                                      .jobid,
                                              companyParameter:
                                                  listViewAppliedJobsRecord
                                                      .company,
                                              jobTitleParameter:
                                                  listViewAppliedJobsRecord
                                                      .jobTitle,
                                              candidateIDParameter:
                                                  listViewAppliedJobsRecord
                                                      .candidateUid,
                                            ),
                                          ),
                                        );
                                      },
                                      text: 'View Job',
                                      options: FFButtonOptions(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                              fontSize: 11,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    StreamBuilder<List<AppliedJobsRecord>>(
                                      stream: queryAppliedJobsRecord(
                                        queryBuilder: (appliedJobsRecord) =>
                                            appliedJobsRecord
                                                .where('jobid',
                                                    isEqualTo:
                                                        listViewAppliedJobsRecord
                                                            .jobid)
                                                .where('candidate_uid',
                                                    isEqualTo: currentUserUid),
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitThreeBounce(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        List<AppliedJobsRecord>
                                            buttonAppliedJobsRecordList =
                                            snapshot.data;
                                        // Return an empty Container when the document does not exist.
                                        if (snapshot.data.isEmpty) {
                                          return Container();
                                        }
                                        final buttonAppliedJobsRecord =
                                            buttonAppliedJobsRecordList
                                                    .isNotEmpty
                                                ? buttonAppliedJobsRecordList
                                                    .first
                                                : null;
                                        return FFButtonWidget(
                                          onPressed: () async {
                                            await listViewAppliedJobsRecord
                                                .reference
                                                .delete();
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CandidateViewAllAppliedJobsWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Quick Withdraw Application',
                                          options: FFButtonOptions(
                                            color: Color(0xFF932626),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Roboto',
                                                      color: Colors.white,
                                                      fontSize: 11,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StreamBuilder<List<AppliedJobsRecord>>(
                                      stream: queryAppliedJobsRecord(
                                        queryBuilder: (appliedJobsRecord) =>
                                            appliedJobsRecord
                                                .where('jobid',
                                                    isEqualTo:
                                                        listViewAppliedJobsRecord
                                                            .jobid)
                                                .where('candidate_uid',
                                                    isEqualTo: currentUserUid),
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitThreeBounce(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        List<AppliedJobsRecord>
                                            buttonAppliedJobsRecordList =
                                            snapshot.data;
                                        // Return an empty Container when the document does not exist.
                                        if (snapshot.data.isEmpty) {
                                          return Container();
                                        }
                                        final buttonAppliedJobsRecord =
                                            buttonAppliedJobsRecordList
                                                    .isNotEmpty
                                                ? buttonAppliedJobsRecordList
                                                    .first
                                                : null;
                                        return FFButtonWidget(
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child:
                                                      CandidateChkApplicationStatusWidget(
                                                    jobidParameterChkStatusBS:
                                                        listViewAppliedJobsRecord
                                                            .jobid,
                                                    candidateuidParameterChkStatusBS:
                                                        listViewAppliedJobsRecord
                                                            .candidateUid,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          text: 'Check Application Status',
                                          options: FFButtonOptions(
                                            color: Color(0xFF308B77),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Roboto',
                                                      color: Colors.white,
                                                      fontSize: 11,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
