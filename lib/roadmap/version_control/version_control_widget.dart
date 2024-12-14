import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'version_control_model.dart';
export 'version_control_model.dart';

class VersionControlWidget extends StatefulWidget {
  const VersionControlWidget({Key? key}) : super(key: key);

  @override
  _VersionControlWidgetState createState() => _VersionControlWidgetState();
}

class _VersionControlWidgetState extends State<VersionControlWidget> {
  late VersionControlModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VersionControlModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Version_Control'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            controller: _model.columnController,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 67.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        '',
                      ).image,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(1.0, 2.0),
                        spreadRadius: 1.0,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'VERSION_CONTROL_arrow_back_ios_ICN_ON_TA');
                                logFirebaseEvent('IconButton_navigate_back');
                                context.safePop();
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 286.0,
                              height: 34.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Text(
                                'Version Control System',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 22.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent(
                        'VERSION_CONTROL_ListView_wq7zpgaz_ON_TAP');
                    logFirebaseEvent('ListView_scroll_to');
                    await _model.listViewController?.animateTo(
                      _model.listViewController!.position.maxScrollExtent,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.ease,
                    );
                  },
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBFBFB),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      'https://ouch-cdn2.icons8.com/_qv0GZ-TvUNz7L6kTDY6jQTK0ZL8PBgeSRketqzOyB0/rs:fit:456:456/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDEw/LzY2ZThhYzc1LTJh/ZjAtNDk4MC1hNThl/LWMwOWY0NWIyM2Mz/NS5wbmc.png',
                                      width: 70.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'GitHub',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBFBFB),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      'https://cdn3d.iconscout.com/3d/free/thumb/free-gitlab-5562373-4642718.png',
                                      width: 70.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'GitLab',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBFBFB),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      'data:image/png;base64,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',
                                      width: 70.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Beanstalk',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBFBFB),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      'https://i0.wp.com/blog.henrypoon.com/wp-content/uploads/2014/08/svn.png?fit=1200%2C675&ssl=1',
                                      width: 70.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Apache Subversion',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBFBFB),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      'data:image/png;base64,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',
                                      width: 70.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mercurial',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                    controller: _model.listViewController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
