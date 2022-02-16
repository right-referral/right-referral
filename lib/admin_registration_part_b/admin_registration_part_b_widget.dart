import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminRegistrationPartBWidget extends StatefulWidget {
  const AdminRegistrationPartBWidget({Key key}) : super(key: key);

  @override
  _AdminRegistrationPartBWidgetState createState() =>
      _AdminRegistrationPartBWidgetState();
}

class _AdminRegistrationPartBWidgetState
    extends State<AdminRegistrationPartBWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
