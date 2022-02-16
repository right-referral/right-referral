import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CandidateApplyJobWidget extends StatefulWidget {
  const CandidateApplyJobWidget({Key key}) : super(key: key);

  @override
  _CandidateApplyJobWidgetState createState() =>
      _CandidateApplyJobWidgetState();
}

class _CandidateApplyJobWidgetState extends State<CandidateApplyJobWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
