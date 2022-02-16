import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferrerJobWorkflowWidget extends StatefulWidget {
  const ReferrerJobWorkflowWidget({Key key}) : super(key: key);

  @override
  _ReferrerJobWorkflowWidgetState createState() =>
      _ReferrerJobWorkflowWidgetState();
}

class _ReferrerJobWorkflowWidgetState extends State<ReferrerJobWorkflowWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
