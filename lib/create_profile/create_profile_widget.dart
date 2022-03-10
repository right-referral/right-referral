import '../add_work_exp/add_work_exp_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../company_profile/company_profile_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateProfileWidget extends StatefulWidget {
  const CreateProfileWidget({Key key}) : super(key: key);

  @override
  _CreateProfileWidgetState createState() => _CreateProfileWidgetState();
}

class _CreateProfileWidgetState extends State<CreateProfileWidget> {
  String dropDownExperienceLevelValue;
  String uploadedFileUrl = '';
  TextEditingController textFieldFullNameController;
  TextEditingController textFieldPositionTitleController;
  TextEditingController textFieldShortDescriptionController;
  TextEditingController textFieldCurrentCompanyController;
  TextEditingController textFieldPhoneNumberController;
  TextEditingController textFieldSecondaryEmailController;
  TextEditingController textFieldCurrentLocationController;
  TextEditingController textFieldLinkdlnController;
  TextEditingController textFieldWebsiteController;
  TextEditingController textFieldGithubController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldCurrentCompanyController = TextEditingController();
    textFieldFullNameController = TextEditingController();
    textFieldPositionTitleController = TextEditingController();
    textFieldShortDescriptionController = TextEditingController();
    textFieldPhoneNumberController = TextEditingController();
    textFieldSecondaryEmailController = TextEditingController();
    textFieldCurrentLocationController = TextEditingController();
    textFieldLinkdlnController = TextEditingController();
    textFieldWebsiteController = TextEditingController();
    textFieldGithubController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary600,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        title: Text(
          'Create Profile',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.of(context).background,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).background,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        buttonSize: 48,
                        icon: Icon(
                          Icons.photo_camera_outlined,
                          color: FlutterFlowTheme.of(context).grayIcon400,
                          size: 30,
                        ),
                        onPressed: () async {
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                          );
                          if (selectedMedia != null &&
                              validateFileFormat(
                                  selectedMedia.storagePath, context)) {
                            showUploadMessage(
                              context,
                              'Uploading file...',
                              showLoading: true,
                            );
                            final downloadUrl = await uploadData(
                                selectedMedia.storagePath, selectedMedia.bytes);
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            if (downloadUrl != null) {
                              setState(() => uploadedFileUrl = downloadUrl);
                              showUploadMessage(
                                context,
                                'Success!',
                              );
                            } else {
                              showUploadMessage(
                                context,
                                'Failed to upload media',
                              );
                              return;
                            }
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldFullNameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            labelStyle: FlutterFlowTheme.of(context)
                                .title3
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkText,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                      child: TextFormField(
                        controller: textFieldPositionTitleController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Postition Title',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).grayIcon400,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).lineColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).lineColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).darkText,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldShortDescriptionController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Short Description',
                            labelStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkText,
                              ),
                          maxLines: 4,
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: FlutterFlowDropDown(
                        initialOption: dropDownExperienceLevelValue ??=
                            'Experience Level',
                        options: [
                          '< 6 Months',
                          '6m - 1y',
                          '1y - 3y',
                          '+3 years',
                          '+5 years',
                          '+8 years'
                        ].toList(),
                        onChanged: (val) =>
                            setState(() => dropDownExperienceLevelValue = val),
                        width: 130,
                        height: 40,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).grayIcon400,
                              fontWeight: FontWeight.normal,
                            ),
                        hintText: 'Experience Level',
                        icon: FaIcon(
                          FontAwesomeIcons.chevronDown,
                          color: FlutterFlowTheme.of(context).grayIcon400,
                          size: 16,
                        ),
                        fillColor: Colors.white,
                        elevation: 0,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldCurrentCompanyController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Current Company',
                            labelStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkText,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: FlutterFlowTheme.of(context).lineColor,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldPhoneNumberController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            labelStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkText,
                              ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: Color(0xFFDBE2E7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldSecondaryEmailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Secondary Email',
                            labelStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF0C141D),
                                    fontWeight: FontWeight.normal,
                                  ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: Color(0xFFDBE2E7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldCurrentLocationController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Current Location',
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                  fontSize: 16,
                                ),
                            hintText: '[Some hint text...]',
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
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: Color(0xFFDBE2E7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldLinkdlnController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Linkdln',
                            labelStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkText,
                              ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: Color(0xFFDBE2E7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldWebsiteController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Website',
                            labelStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkText,
                              ),
                          keyboardType: TextInputType.url,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: Color(0xFFDBE2E7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: TextFormField(
                          controller: textFieldGithubController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Github',
                            labelStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).grayIcon400,
                                ),
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
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).darkText,
                              ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: Color(0xFFDBE2E7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 4),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue as a(n)',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose an option below to continue.',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      final usersUpdateData = createUsersRecordData(
                        displayName: textFieldFullNameController.text,
                        positionTitle: textFieldPositionTitleController.text,
                        bio: textFieldShortDescriptionController.text,
                        experienceLevel: dropDownExperienceLevelValue,
                        currentCompany: textFieldCurrentCompanyController.text,
                        createdTime: getCurrentTimestamp,
                        phoneNumber: textFieldPhoneNumberController.text,
                        fullName: textFieldFullNameController.text,
                        shortDescription:
                            textFieldShortDescriptionController.text,
                        email: currentUserEmail,
                        password: currentUserDocument?.password,
                        photoUrl: uploadedFileUrl,
                        uid: currentUserUid,
                        profileType: 'Candidate',
                        currentLocation:
                            textFieldCurrentLocationController.text,
                        registrationDatetime: getCurrentTimestamp,
                        secondaryEmail: textFieldSecondaryEmailController.text,
                        likedPosts: false,
                        salary: '0',
                        activeFlag: 'Y',
                        subscriptionStatus: 'Y',
                        subscriptionType: 'Basic',
                        subscriptionStartDate: getCurrentTimestamp,
                        subscriptionEndDate: getCurrentTimestamp,
                        linkdlnUrl: textFieldLinkdlnController.text,
                        website: textFieldWebsiteController.text,
                        github: textFieldGithubController.text,
                        viewType: 'Public',
                        isGuest: false,
                        title: 'Mr/Ms/Mrs',
                      );
                      await currentUserReference.update(usersUpdateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddWorkExpWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 2,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                            child: Icon(
                              Icons.person_outline,
                              color: FlutterFlowTheme.of(context).grayIcon,
                              size: 44,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'As an Individual',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Roboto',
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              Icons.chevron_right_rounded,
                              color: FlutterFlowTheme.of(context).grayIcon400,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        final usersUpdateData = createUsersRecordData(
                          displayName: textFieldFullNameController.text,
                          positionTitle: textFieldPositionTitleController.text,
                          bio: textFieldShortDescriptionController.text,
                          experienceLevel: dropDownExperienceLevelValue,
                          currentCompany:
                              textFieldCurrentCompanyController.text,
                          createdTime: getCurrentTimestamp,
                          phoneNumber: textFieldPhoneNumberController.text,
                          fullName: textFieldFullNameController.text,
                          shortDescription:
                              textFieldShortDescriptionController.text,
                          email: currentUserEmail,
                          password: currentUserDocument?.password,
                          photoUrl: uploadedFileUrl,
                          uid: currentUserUid,
                          profileType: 'Recruiter',
                          currentLocation:
                              textFieldCurrentLocationController.text,
                          registrationDatetime: getCurrentTimestamp,
                          secondaryEmail:
                              textFieldSecondaryEmailController.text,
                          likedPosts: false,
                          salary: '0',
                          activeFlag: 'Y',
                          subscriptionStatus: 'Y',
                          subscriptionType: 'Basic',
                          subscriptionStartDate: getCurrentTimestamp,
                          subscriptionEndDate: getCurrentTimestamp,
                          linkdlnUrl: textFieldLinkdlnController.text,
                          website: textFieldWebsiteController.text,
                          github: textFieldGithubController.text,
                          viewType: 'Public',
                          isGuest: false,
                          title: 'Mr/Ms/Mrs',
                        );
                        await currentUserReference.update(usersUpdateData);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompanyProfileWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Icon(
                                Icons.group_outlined,
                                color: FlutterFlowTheme.of(context).grayIcon,
                                size: 44,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'As a Company',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color: FlutterFlowTheme.of(context).grayIcon400,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        final usersUpdateData = createUsersRecordData(
                          displayName: textFieldFullNameController.text,
                          positionTitle: textFieldPositionTitleController.text,
                          bio: textFieldShortDescriptionController.text,
                          experienceLevel: dropDownExperienceLevelValue,
                          currentCompany:
                              textFieldCurrentCompanyController.text,
                          createdTime: getCurrentTimestamp,
                          phoneNumber: textFieldPhoneNumberController.text,
                          fullName: textFieldFullNameController.text,
                          shortDescription:
                              textFieldShortDescriptionController.text,
                          email: currentUserEmail,
                          password: currentUserDocument?.password,
                          photoUrl: uploadedFileUrl,
                          uid: currentUserUid,
                          profileType: 'Referrer',
                          currentLocation:
                              textFieldCurrentLocationController.text,
                          registrationDatetime: getCurrentTimestamp,
                          secondaryEmail:
                              textFieldSecondaryEmailController.text,
                          likedPosts: false,
                          salary: '0',
                          activeFlag: 'Y',
                          subscriptionStatus: 'Y',
                          subscriptionType: 'Basic',
                          subscriptionStartDate: getCurrentTimestamp,
                          subscriptionEndDate: getCurrentTimestamp,
                          linkdlnUrl: textFieldLinkdlnController.text,
                          website: textFieldWebsiteController.text,
                          github: textFieldGithubController.text,
                          viewType: 'Public',
                          isGuest: false,
                          title: 'Mr/Ms/Mrs',
                        );
                        await currentUserReference.update(usersUpdateData);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompanyProfileWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Icon(
                                Icons.person_outline,
                                color: FlutterFlowTheme.of(context).grayIcon,
                                size: 44,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'As a Referrer',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color: FlutterFlowTheme.of(context).grayIcon400,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
