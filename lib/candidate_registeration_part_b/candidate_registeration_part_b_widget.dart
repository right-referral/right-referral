import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CandidateRegisterationPartBWidget extends StatefulWidget {
  const CandidateRegisterationPartBWidget({Key key}) : super(key: key);

  @override
  _CandidateRegisterationPartBWidgetState createState() =>
      _CandidateRegisterationPartBWidgetState();
}

class _CandidateRegisterationPartBWidgetState
    extends State<CandidateRegisterationPartBWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF004065),
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}