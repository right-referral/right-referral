import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../candidate_view_all_applied_jobs/candidate_view_all_applied_jobs_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CandidateToReferrerRequestBSWidget extends StatefulWidget {
  const CandidateToReferrerRequestBSWidget({
    Key key,
    this.jobidParameter,
    this.candidateUIDParameter,
    this.companyParameter,
    this.jobTitleParameter,
  }) : super(key: key);

  final String jobidParameter;
  final String candidateUIDParameter;
  final String companyParameter;
  final String jobTitleParameter;

  @override
  _CandidateToReferrerRequestBSWidgetState createState() =>
      _CandidateToReferrerRequestBSWidgetState();
}

class _CandidateToReferrerRequestBSWidgetState
    extends State<CandidateToReferrerRequestBSWidget> {
  TextEditingController candidatecommentsController;
  TextEditingController referreremailidController;
  TextEditingController referrerlinkdlnController;

  @override
  void initState() {
    super.initState();
    candidatecommentsController = TextEditingController();
    referreremailidController = TextEditingController();
    referrerlinkdlnController = TextEditingController();
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
              controller: referreremailidController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Referrer Email ID',
                hintText: '[Some hint text...]',
                hintStyle: FlutterFlowTheme.of(context).bodyText2,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(2),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(2),
                  ),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            TextFormField(
              controller: referrerlinkdlnController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Referrer Linkdln link',
                hintText: '[Some hint text...]',
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
            ),
            TextFormField(
              controller: candidatecommentsController,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Add your comments',
                hintText:
                    'Enter some relevant comments for the referrer to know you better',
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
              child: FFButtonWidget(
                onPressed: () async {
                  final appliedJobsCreateData = createAppliedJobsRecordData(
                    jobid: widget.jobidParameter,
                    candidateEmailid: currentUserEmail,
                    candidateUid: widget.candidateUIDParameter,
                    appliedOnDt: getCurrentTimestamp,
                    referrerEmailId: referreremailidController.text,
                    referrerLinkdln: referrerlinkdlnController.text,
                    referrerComments: 'Awaiting comments',
                    referrerVerificationStatus: 'Awaiting',
                    referrerUid: '',
                    recruiterUid: '',
                    referrerCandidateRelation: '',
                    recruiterEmailid: '',
                    recruiterComments: '',
                    recruiterApproval: '',
                    initiatedBy: 'Candidate',
                    initiatedDt: getCurrentTimestamp,
                    initiatorComments: candidatecommentsController.text,
                    candidateAcceptanceStatus: 'Positive',
                    referrerAcceptanceStatus: 'Awaiting',
                    recruiterAcceptanceStatus: 'Awaiting',
                    company: widget.companyParameter,
                    jobTitle: widget.jobTitleParameter,
                    adminVerificationStatus: 'Awaiting',
                    adminVerificationComments: 'Awaiting comments',
                  );
                  await AppliedJobsRecord.collection
                      .doc()
                      .set(appliedJobsCreateData);
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CandidateViewAllAppliedJobsWidget(),
                    ),
                  );
                },
                text: 'Send it through',
                options: FFButtonOptions(
                  color: FlutterFlowTheme.of(context).primary600,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
