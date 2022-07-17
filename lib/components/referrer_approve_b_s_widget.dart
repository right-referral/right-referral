import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../referrer_pending_approval_list/referrer_pending_approval_list_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferrerApproveBSWidget extends StatefulWidget {
  const ReferrerApproveBSWidget({
    Key key,
    this.jobidParameter,
    this.candidateUIDParameter,
  }) : super(key: key);

  final String jobidParameter;
  final String candidateUIDParameter;

  @override
  _ReferrerApproveBSWidgetState createState() =>
      _ReferrerApproveBSWidgetState();
}

class _ReferrerApproveBSWidgetState extends State<ReferrerApproveBSWidget> {
  TextEditingController referrercommentsController;

  @override
  void initState() {
    super.initState();
    referrercommentsController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFDFE9E9),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: referrercommentsController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Approval comments',
                hintText:
                    'Enter some relevant approval comments for the candidate\'s application',
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
              maxLines: 3,
              keyboardType: TextInputType.multiline,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: StreamBuilder<List<AppliedJobsRecord>>(
                stream: queryAppliedJobsRecord(
                  queryBuilder: (appliedJobsRecord) => appliedJobsRecord
                      .where('jobid', isEqualTo: widget.jobidParameter)
                      .where('candidate_uid',
                          isEqualTo: widget.candidateUIDParameter)
                      .where('referrer_email_id', isEqualTo: currentUserEmail),
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
                          color: FlutterFlowTheme.of(context).primaryColor,
                          size: 50,
                        ),
                      ),
                    );
                  }
                  List<AppliedJobsRecord> buttonAppliedJobsRecordList =
                      snapshot.data;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data.isEmpty) {
                    return Container();
                  }
                  final buttonAppliedJobsRecord =
                      buttonAppliedJobsRecordList.isNotEmpty
                          ? buttonAppliedJobsRecordList.first
                          : null;
                  return FFButtonWidget(
                    onPressed: () async {
                      final appliedJobsUpdateData = createAppliedJobsRecordData(
                        referrerComments: referrercommentsController.text,
                        referrerVerificationStatus: 'Approved',
                        verificationStatusDt: getCurrentTimestamp,
                        referrerUid: currentUserUid,
                        referrerAcceptanceStatus: 'Approved',
                      );
                      await buttonAppliedJobsRecord.reference
                          .update(appliedJobsUpdateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ReferrerPendingApprovalListWidget(),
                        ),
                      );
                    },
                    text: 'Approve Candidate',
                    options: FFButtonOptions(
                      color: FlutterFlowTheme.of(context).primary600,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).background,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
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
