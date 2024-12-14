import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_development_roadmap_model.dart';
export 'app_development_roadmap_model.dart';

class AppDevelopmentRoadmapWidget extends StatefulWidget {
  const AppDevelopmentRoadmapWidget({Key? key}) : super(key: key);

  @override
  _AppDevelopmentRoadmapWidgetState createState() =>
      _AppDevelopmentRoadmapWidgetState();
}

class _AppDevelopmentRoadmapWidgetState
    extends State<AppDevelopmentRoadmapWidget> {
  late AppDevelopmentRoadmapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppDevelopmentRoadmapModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'App_Development_Roadmap'});
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
                  height: 220.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://cdn3d.iconscout.com/3d/premium/thumb/mobile-development-5652542-4708214.png',
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
                                    'APP_DEVELOPMENT_ROADMAP_arrow_back_ios_I');
                                logFirebaseEvent('IconButton_navigate_back');
                                context.safePop();
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 60.0, 0.0, 0.0),
                              child: Text(
                                'App Development',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Merriweather',
                                      fontSize: 32.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 20.0,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Wanna build an app?Learn app development now!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                ),
                          ),
                        ),
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
                        'APP_DEVELOPMENT_ROADMAP_ListView_m2r8v1o');
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
                                      'https://static.vecteezy.com/system/resources/previews/010/794/809/original/programming-language-3d-illustration-png.png',
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
                                          'Programming Language',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 50.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Java',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 50.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Kotlin',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 41.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'XML',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
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
                                      'data:image/jpeg;base64,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',
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
                                          'Android Studio',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 104.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'File Structure',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 79.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Overview',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://developer.android.com/static/guide/practices/ui_guidelines/images/article_icon_adaptive.gif',
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
                                          'Android Components',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 61.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Activity',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 71.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Services',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/ui-design-7199320-5846532.png',
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
                                          'Simple UI Design',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 123.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'View Elements',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 81.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Intent',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://img.freepik.com/free-vector/mobile-app-development-isometric-background-with-composition-smartphone-screens-with-3d-app-icons-connections-vector-illustration_1284-77301.jpg',
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
                                          'Complex UI Design',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 72.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'ListView',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 86.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Fragments',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 67.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Dialogs',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://cdn.dribbble.com/users/6458/screenshots/14733616/media/408d53fcc3efa09b3971138877a097aa.jpg?compress=1&resize=400x300&vertical=top',
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
                                          'Storage',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 109.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'File System',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 78.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Database',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/reload-arrow-6617156-5576283.png',
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
                                          'Threading',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 76.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Threads',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 60.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Looper',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/find-website-bug-7207348-5862556.png?f=webp',
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
                                          'Debugging',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 87.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Exceptions',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 120.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Error Handling',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://static.vecteezy.com/system/resources/previews/017/053/180/original/3d-render-ram-memory-icon-png.png',
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
                                          'Memory Leaks',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 66.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Cause',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 90.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Detection',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 70.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Context',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                          'Third Party Libraries',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 149.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Dependency Injection',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 86.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Networking',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://innovance.com.tr/wp-content/uploads/2022/01/Screen-Shot-2022-01-27-at-22.23.43.png',
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
                                          'Android Jetpack',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 68.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Android Ktx',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 64.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Paging',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 98.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Navigation',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
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
                                      'https://cdn-icons-png.flaticon.com/512/5270/5270902.png',
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
                                          'Architecture',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 61.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'MVVM',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 60.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'MVI',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 62.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'MVP',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://cdn.iconscout.com/icon/free/png-256/free-firebase-3628772-3030134.png',
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
                                          'Firebase',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 57.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'FCM',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 79.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Analytics',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
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
                                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhIWFhUVFRUVGBgVFRgVFRgXFRUWFhYXFxUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0lICYtLS0rLy0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBgcEBQj/xABNEAABAwEFAwcGCAsHBQEAAAABAAIDEQQSITFBBQZRBxMiYXGBsTJCkaHB0RQjUnJzk7PTF0NTYoKSstLh8PEkMzQ1dKLCFURjZIMl/8QAGwEBAAIDAQEAAAAAAAAAAAAAAAQFAgMGAQf/xAA4EQABAwICBwYFAwMFAAAAAAABAAIDBBEhMQUSE0FRYXGBkaGx0fAUMlLB4QYiMyNC8RUWYpKy/9oADAMBAAIRAxEAPwDcUITHmmSInEoSMTkRICglRvNMs+CWPHHVET0ApVFJhjr4oikJQo4zXHXwUqIkBQSmS4YpGGpxz4IikCAUq5Ldao4mGSR4Y1vnH1dvYi8JAFyuolAXBszaUVoF6KQPA4YEdoOIXoL0gg2KAhwuDcJAUqY7LFMY6uf9V4vVKCiqVIQiJUgKhD64E4ceKnREhKVIQoL+lcK5oinqglACVEQhRXtNFIERKhCERISgBBSoiheCMR3hK6UUwxJySvfTtOQUQjLelnxHuRFLGymJzSPZTEd44p7XVxCR76IibzopX1a1RGzU5+CZzZ8rXgpmPqiJkjNRn4oEwpX1Jz3gCpUXNnysjn/VETmMJxd3DgnSs1rQjVVLbe+8cdWQDnHjAnzQe3zu7BUq27XtNqdRzy6vmCob6ApcVG94ucBz9FWVGloYjqt/c7gPX0BWmWreWzR4PmFRmG1efQ2qqO+O8cNqiEcTnVDw7EXRQNI41rUhebYty7XKKlgYD8t1PUAT6km3d2H2WLnHyNcS4NutBwq1zq1Ofk8NVIihgZILPub4ewoFRVVskLiY7NtjfO3eP/K8ixWySF4kjcWuGo8CNQtG3Y3ubaCIpRcl0pk+nDgepZoxhcQACScgMSVet0t0Xtc2ec3S3FjNa0zdw7FurGxal357uKi6JfUCTVj+X+7gPQ9PFXcC9ictOtPe2oSRv0OakVMusULH0wdnx4o8r5vikcL/AGeKVjqdE93WiJ7mAiiaHUND3FSqF/SwGWp9yIkJvYDLU+wKS4KU0UbDd6J7ip0RQg3cDlofYgvqaDvKSQ3uiO8pW9HA5cfeiKRraCiAKJySqIlQkQiJVE913L0KQlIB6URMjbrmSpVARdxGWo4J7pABX0IiY/omo10SxCvSOJ8EsbNTn4JHNu4jvCIplDKKdIejinmUUqmMZXpO7hwRFHfFC95AAqccA0Dis43p3tdOTHCS2EYVyL+s8G9Xp4Lp3829febPEeg00kI1I07B49ifuXu0HAWmcdEYsafO6z1cArCGNkTNrJ2D3v8AtiqKsqJaqX4aDL+4+fYPE4ZLh3f3QknAllPNx5j5TuwaDrPoV/2VsyGIUjYGgd7j1lxxK8XfDe2OxNAuh8p8hlaAD5TyMh1arg3f5RIJ8JqQPGpPxTv0tD1FRpp3ynHLgryj0I6GHaxsJHHf2DO3TDqr6se3z36518lnEDDGxxAc69fvMJF4UcANeK9rbvKfE0FlmjMjqEXnG60dYGbvUsne4klxzOJ7VqaSDcLodHaIa9rjVMuCLAHxuL+fFWzdzfH4O5v9mYRXpOo4PprdJcQOyi26CUOaHDIgEdhFV8yLTd1+UmONkcNoicAxrWh7TeqAKVc04+gnsXryXG5WVdoZjI2/CR2te4HoT+cVp72V6iNVE1xdgf6qpbd5QbLEwGN3OucKgNNB+m6nR7M0m6G+8dsPNvAjl8yjqteOonI9SwVR8DUbIy6h1R7yztzsrsAmvYCEkb9DmmON7AZan2BFETQ8no17+KnaKYBIYxSiax+hz8URPc2ooVBfPk16q/zqpHuJNB3ngnc2KURENbQUCUiqja4g0PcUr340GfgiJt6mFf4KVookawAUSjBETkIQiJClQonOu9iInSPooGtLekR/BSxs1OfgpURNBqke8AVKid0MdDp7k6Nteke7qREwMI6VO5ebvRtb4PZnPaem7Bnade4VK9tZlyj229OIh+LaCR+c/HwurfTR7SQA5ZqHpCcwwOcM8h1Ppn2LzN1tkfCp6Prcbi88Rwrxr7VpO13vjs8skLReZG4sbTCrW4YDOnDqXl7hbNuWYPdnIa9wqG+/vVrWdZLtJDwGHv3wWrRNMIIQ4jE2J6bh2Dxuvma3Wp8rzJI8ucTUuOZXOvX3pEPwub4OKR33U4fnXaaVrTqovKAUdfVWOu0G1sBhwwy7MkiRTy2Z7AC9hAdkXNLQewkYqJeoLbk1Kpvg77t+4bmV66bleF6lEQQPeaMY5xArRrS4040AyRLg9FCnxvLSHNJBBqCDQgjIgppCmsVznGX63L7b13OlRep10qi9P7cwt23PtktoskMkvlkGrqUvAGjXU6wvdid5pwITLEGCNnN05u425dyuUF2nVSileyvboVgvnsrg6RzgLAk4cOSkUEvSwHeeCQSE9HI6n3KVjQBQIsEyI06J/qpk17KqHnD5OvFETpTXoj+iI+jgddeKexlErm1wKInJCVEHEYehSgIiEJUIiQlNDdSnFKiKHyfm+Ce94AqiRwAxUDW0oSMPBEUjGVxd3DgkIu4jLUcFOmudQVKIi8KV0WMbdkM1rld8qWg7K3W+oBa+1vnUwrWntWQWLG1srrK39sKfQYFzuAVHpv8Ac2NnF34+61o3LPHWobHGwVrgA1opX1Kk7f5SbPzUkcHOF5Y5rXUuhpIpexxwzVl39/y+0/R/8gsA1UEYrudE6PinaZH3NjYDdxUlngdK5rI2lznEBrWipJ7FqO6u4LYbs1oAc8YiPNjD1/KcPQvW3E2LBDZo5YwHPlY1zpM3VIqWg6AHCnUvN5SN4rVZmiOzxlrXihtGYBPmt+S7rPchK21WkJauXYQYDInIn0HLNQ8p+27PzHwWodMXMcAMTGGmpJ4EgFtPzlmez7K6WRkTfOLGjvNCuZrcS4klxNSSakk5kk5lXPks2dztr5wjowNLv03dFnqvnuS6sYmChpHY5XPbkOy60PbsUVmsMgLRzccJbdoKEUoBTLEqm8lW24Ir9ne4NlkeHNc7APF0NuXuIIJp+cu/le2jdiiswOMrzI75keQPa4j9UrK5GAjFFX0FEZqRwcfmN+7etj3t3KitZMkIEc2rsmvP5w4/nLKdpbPks8hilYWvbmDqNCDqOsK+8mO8drkd8GkY6WNowk1jwwD3HyurVXXeLY0FqiLZmjohxD8A5mFag+KArXDWy0MmxmxHeR09CqfudyhQwwRwWgPrGLoc0Xhdr0RTPAYdy0Sw7QZaI2yQuvMd5w04jqK+b3rauSU/2Cn/AJX+DUIWWl6CKNm2ZmXY8MbnsVwMQpQYUyKWN+hzVA3p3rtEVpdHG4NZGQKXQb2AJqTjrTBXeKXnGMcBQuDXdlQD7VskhcxrXHeuVhq45nvY2924H8dqmkf5oz8EvNClPXrVJDhhr4qZalJUTH6HPxSySaDNMmNcNfBEOBoc+PFET2swxTmpyQoiVCRCIlURddzyUhKZcriURNYypvHuHBTKAG7gctDwUrnACpRFFW583wStbexOWg9qGtvYnLQI8n5vgiKZYpbPibU+v4uQn9V1fYtq61ku/dkuWt7gOjIGuHeKO/3A+lTqB37y07x78Lqm0207FrxuPn+QFou2rB8LgkivXWyMoDnjmD2LHtt7h2uztdIWh8bQSSxwNGjUtND6KrWd1bdzllifnRt13U5nRr3gA969iaJr2FrsWuaQRoQRQj0KG4FjiDuXS6P0o+ButHYtdY2P27F8+7s70T2B/Q6cTjV8ROGObmnzXLXdj7Zs20YjcIcylJI3UvCujm8OBWM7e2cbPaJISa3HkA8W5tPbQhctitMkEgmgeWSNyI1GoPEHgViQuirNGx1I2sWBOIPHC6uW/W5oszTaID8VeAc0nFhcaCh1bXDqqFauTTZhisgl86VxefmjBg9Ar3qgbd35tNriEEjGMbUF5bXpluIzyFcaJdmb+Wuz2f4MxrHACjHmtWA6YZ0QlaJaerloxG/F2t4br80m/wDtLn7bI4Hox0ib2M8qn6RKn3J3SNtc573XYmODXU8pzqVujhgRU9aqziTiTU1JJ4kmpK9zdve6ewh7Y2tex5vFrq4OpS8COqnoXpwU+SKWKl2cHzAAD79ua1y0yWXZ1nvEthjZgAM3HhTN7isp3s3ymtxMbaxWf5IPSf1vPDqyXj7Y2rNbJedtD7xya0YNYODRp7VHZLO6SRsbaXnlobU0FXGgqe0rwC6i0Wi2xf1Zjc545Dj1Xt7A3MtVrbzkbAIzUBziGtNDQ0GNfQtg3U2CbHZ2wl15wLnkjAVdmB1Lu2HYhZ4I4G5RsDe0jyj3mp707attEMUknyGk99MB3mi9xOCpa/Sb6gFpsGA3HZfEnpwssm3km5y1zEayEfqmnsWwWKK5GxvBrR6AAsg3dshntUTc6uq49TTVxPbQ+lbHHJXA4Hgp1dhqM4D8LktDfv2s31H1J87IeyvboUznTlTpertT5JNBmk5nDr4qArtLGynbqU57Kpsb9Dmh76dqImh5GBz8VKAmNZxzTgeKInIQhESFKkITL9M0RLJSmOS526Xq3dP4qRrbxqctApSK4IicmnLFRA3cDloeCUC9ictOtEUQ663a/wA9yrnKBsvnYBK0VdFjh8k5+wq20XO9gALSKsOBHbp2LON5Y8OG5aZ4WzRujdvHvuWe8nm1hHKYHnoy4t4Bw07wrrtm0uigmlY0uuMc4N4kDhw17lmW8mx3WWYgVuE3o3dVcq+r1rQN09vttUd19BK0UcPlDiB4qZWRh39ZmRz9VV6KqNm74Wb5mnAcRvF/Ll0WD2qZ0j3Pfi4uLnE6k4kqILSN/dwy1xtFkZUE1cxoxaflNHyeI0Xj7u8ntotHSk+IZji4VceF1mGHWSFCuvqbNI0zotrrADhvHKw+wVPKRWjbe41ss9TzfOMHnR9IU4luYVXXqkxSxyDWjcCOSVCF7+w9z7VaqGOO6w5Pcbracb2Z7gUSSRjBrPIA5my8BK11Fd9t8mdohYHxOE2FXMaC0g63QT0h6D1JNzNxZJ5L9oa5kbTk4Uc48ANG8SvLqOdI04jMoeCBwzvwAzutF3P2jJaLJFK8ESXS0k+ddN29309NV4fKDtYBrbMw4mhk/wCIPirJtjakVihFAK0uxsGGQplo0YLNLDY5bbaKVq97qvccgNSfd2BS6OIX2rsgvmGmqwOJhhFi85DcCcu3yx4K2cmuzKB9ocM+izszcfAdyuk2Yp5X85qGyRNiY2OMUDRdA4U1K6Y2U7dVHmk2jy5TaSnFPC2Phn13psFMeOqmUUrK4jMJOe0p0uC1KQiamHHRJFma+V/OSfG2mJzKHsr2oikSFRh+hz8U8DiiJUJUIiQlMLK55J5SoiiDqGh7ink0SSAEY5KBuNA7LTr7URSAXs8vFIDdwOWh4KdNOWKInKHyvm+KiB0qbtc11AIi8rbWymTxmN+Rxa7VjtCOpZfbLJPYphUlr24tc3IjiOI6lspC8ramzY7QwxyCrK4EeU0/mnRSaepMWBxB9/5VdX0AqAHNweMj6/Y7vBeVu9vay0UZIRHJ24O7DoepWUi7iMRr71l23d0JrPVzBzked5oo4D84e0KLZO91pgo28JGDzXY+h2YW99I2Qa8RHT391Di0o+E7OqaQePvPqFrJAcOojxXz7t3d6eKeRnMvIvOoQx7gRXo0IHCi0+xb+Quwex0dc6dNo7CMfUvbg3nshGEwHzqjxUQwyNzaV0ejdNxQEljmkHcTbLLPHwWF2bYVokcGtgkqTQVYQO8kYL6D2XZhHFHGMmMa39UALik3msg/HtPZj4Lx7dvzZ2V5q88ngLrfS73IIpHZNPcs9JabiqA0Pc0AX33v7Ctj3+aM/BeDvBvHFZBSt+WnkA+tx0Cpm0987RKC1lImnh0ie1x9lFz7G3bntRvAXWHN7q07RqVLZRho1pjYe/dguam0q6Q7OlaS7jb7HzNguWSWe3T6vkccAMgOrhRaXu9sZtkjuijpHYvd18B+aE7Y+xYrI27EKuPlOOLndvAdS9aAClddVqqanaftZg3z98FIodH7E7WQ3efDj28T3JvNEYg4+KkjfVPXPMKEEeV4qIrRSSPp2nJM5nWvS4+xLDx11UyIoo31wOYTnvomTAZ66JsIqST5Xh2IieI9Tn4J7SnJCiJUJEIiCEwOpgVIqxyh2t8ezrQ9hobrWgjP4yRjHEcMHFetFyAF452qCTuUG0N/rBG8sfMTdNDcY54qOJAooXcpeziKc4/6p/uWDSvoovhQU74Vm+6rvi5TkAt8Zym7PGBlf1Hmn+5I7lL2eTTnH0+ifj6lgnwscCpbK50jgyNjnuOQaKleGniAuSe8L0VMpyA8fVbyeUzZtKc4+n0T/cms5TNnjDnXkfRP9yy+ybmWh4q+5H1E3j6kWnc20NFWFknUDdJ7KquNfozW1dsL9fvaylCOutfZ+++61CTlM2ecOdeBr8U/3Jw5S9m0pzj6fRP9ywa2PdE/m5Y3Mf8AJcKYcQciOsKH4YOBVi2CJwu03HJRnVEzTYj33rfGcpezxhzj6fRPw9S8+1bd2PbHhpdce4+XddHj1kih7wsU+FBSRSVWbacNN2kg9VrfO541ZGgjhb1utttXJ5rDMKaXm+1ua8baW588LQ510gmmDtaE+xWzkvtTpNnRF5qWl7ATwa4gepelvS/4kAZ3x+y5QazSFRTwyOaQS0HMcFsi0PSTubdpF+BP3us82dutPKSGUFKVqRrX3L3LJyeOP97M2nAMJProvc3T6POnToV/3Lu3stTo7FaJGGjmxPIPA0WvR+lKiqp2SOIBN8hwcRz4LKbQtJDIWgE24nlysqi627IsEl1zzJI049EyXT+iLoK9J3KZs8DCV/1T8PUsIkkpiVCLWFZPgDjdxJPVR4pywWja0DkPyt9Zyk7OH419dTzT/cmu5StnVqJX11+Kfj6lgnwscCgWoE0ANVj8NHz99i2ipmJsAPH1W+nlN2fTCR/1T/ckZylbOGJlfX6J/uWHMiOuHeEPiOmPoWGyg4++5WAo9JEX2Xv/ALLcX8pWzsxK+v0T8fUnfhO2fT+8f9U/3LAHWsA0LSD1+zil+GDgVn8NHz99igunnYdVzbHmD6rfGcpWzszK+v0T8PUpYuUTZ0jgBMWnQujc1veSF8/fCgpIZKp8LHz99iw+LlGYHvtX1RFMHAEEGoBFMQQciOIUjeKovJDaHSWCjjXm5nxtro26x4HZV5V7BUJzdVxCsGO1mh3FKhCFiskhVU5UP8rtH/y+3jVroqnynu//ADLSNfivt41nF87eoWub+N3Qr57tWS4112vJcQVoVVsyXXsywvnlbEwdJxp2DUnqAWv7E2HFZY7kbcT5Tz5TjxJ4cBoqjyXWQVmmOfRjb1ec7/irpbNpxRuDXyNaTxOPDTILhP1FWzTVBpY76rcwN5tvtwXUaIpQI9ra7j5LoDjWmilATAKjD1Ksby7w3KwxO6WTnDzeodfgudpqWSpkEcee/lzKuo4y9wAXr7X2dZ7Yx0Ul1xGoIL4zxGoPisf2pYH2aZ0EmbfJdo9ujh/PFXbc+xPdMJRg1lbx41Hk9eYKbyr2Ac1FOPKY+4Txa4VHrC6rRknwFaKMP1mu8Hex5dFXaZomapLcx7sqCuyx5LjBqu2xDBdmFxz8lvPJRIRs5g/8kvd0yve3laBCKfLH7LlW+SzaETNnsa94Bvy1FD8s9S9nbttjdHdY+90gaY4ChGvauZ0vPGYZ2awvZwtcX7lfaPjeDG6xthu5KTdL8b+h/wAkm/OFgtQGsTsOGC5tgW5kd+86hddpnperl2hG+W0ITYbS0SAuML9DiadijaFnjbSxsLgDc4XF8XncttdG4yPIBtbh/wAV892rJcC77X5PoXCuwK5yPJOYwkgDMr2LPAGjr1XHstmJPD+K9vZVobHNHI4Va11SPb3Z9ygVcpa12rjYZceS7b9P0LWQ/FOF3HLkB6lc8sDm+U1za4i80ivWKpI2EkAAknIAVJ7AM1pdvssVpixoQRVjhmDoQVDsLYrLO2uBeRi7LDgOAXLj9QsEJc5tn7m7u/NXfxrdU4YrNrVZg4Fj2+kUIPiCq/KwxvuO7jxCvm9ltZLPWPG6LpdoSOHHgqpt2KsYdq13qNB7l0NDO98bXOFrjLgqzTFE2opjLaz2i/YuILrsa42nBdliVouBct05F/8AAyf6h/2cSvxCoHIxhYX/AOof9nEr8OKrZv5HdVZwfxt6JUJULWtqFUuU812ZaDoOa+2jVsKqvKh/ldo/+X28azi+dvULXKbMd0K+eLbkuMLttmS46K0Kq25LQ+TJ4MMzNRKHHscwAfsFP3w2W+/z4FWkAO/NpgD2Kr7lbZFmtFXmkcgDH9WPRd3GvpWtPaHDiCO0EH2Lg9KPl0fpIztGD8evEdcF2Ohqq0Qtm3Ajks5s23po4TC04HI+c0ahvV4Jdg7FdaHY1EY8p3/Eda9607oMdLVry1hNS0D0gHQKyWWzNjaGMFGtwAC8qtLwRRn4UWc/Em1rfnor19SwNOzFic02zQNjaGNADRgKfzmqpyrTgWNrdXStp+iCSrkRVZHv5tkWq0BjHVihJbUZOfk4jiNAdcVB0FTvnrWv+k3J97yqPSEoZCb5nBV5goB2LusZXISuuxZL6UAuNeVsPJ1siSWxMe27S/JqQcHHqVjfsCTLoknt9y4+SiQjZzBxklp1dMq7sZTt4rmKrQ1LLO+R4NySTieKvqetlbCxotgBu5KpDd2VuNWek4epedvXsWRljtDyW0ETjhXh2LQVXN+OjYLSNDE/uwWEehaRsjXAG4I3ncVnJWylhBtkd3JfOVr8n0Liqu21ZLgXVnFc6zJejso+UOoHxXpWeJz3BrQS5xAAGpXiWSW66umR7F7+z7WYpGytoS01HA4EH1Eqvqg9ty3O2HWy+gfp+qElHs2/M24t1xB+y0HYuzTZ4rpdeObvkjjdGgXVaYmTwlod0Xil5h8CM1TdsbzvmZzbW3GnysakjhXQLm2Jt59nNKXmHza0oeLTouM/0eskaahx/qXvbD/F+HJTTTS2Lzne64tq2B8Ehjf3HQjQheNtt3xRHEtHrr7F7+29pm0yXy26AKAZ4Z4lVTas4e8MBwZie1dZQiVzG7X5t616UqdnRuMmZFgPfJQRtoB2LusS42rssitl84ety5GW/wBhef8A2H/ZxLQAVQeRf/Av/wBQ/wCziV+oq6b+R3VWUH8beiVCRC1LaiiqfKdjsu08fivt41bV5+17A20RSQP8mRpaTrjkR1g0PcsmO1XArCRus0jiCvmC1NNMFyc0eC0W38mVua8tjayVoycHtYSOtrqUPpXOeTTaP5Bv1sf7ystow7wqvZyjDVKoXMlWndzeyWztEcjTJEMqeW0cATmOor028m20cuYb9bH+8nDk32jWnMN+tj/eUeqgpqmPZy2I95cFuhkqIXa0YIPQqwWPeWySCvPXeqQFhHpFPWnWreayxipmDuqMGQn9ULLdou+Dyvgl6Mkbixwzo4ZiowKSyTtkeyNhq6R7WNGIq55DWip6yFQ/7VpL32jrcMPOysRpiptbUF+3yXvbyb4zWgGOFjoozUFx/vHDhhg0d6qbIKYBX48m+0a05hv1sfvR+DXaP5Bv1sf7yvKSmpqVmpFYDriepVfUTVE7tZ4PcqCYiuqytormeTfaNacw362P95TWXkzt7nhr2MjBOLnSNIA1wbUk9SlbVg3haDHKf7StD5JWD/prMM3y/tlW4G7gctD7CuTYWymWSBkEeIYKVOZOZce0rtldpmToq151nEq0jbqsAO4JZH0yzOS8LfVlLBaicSYneC9mMXTjrr7EW2ytljfG8Va9paR1EUXgNjdZEXBC+WLQ2oXJzJWkbX5L7ZHIRCGSx16JvhrqaBzXa9lVxnk22iM4G/Wx+9We1jONwqkRSDDVKoXNFdVnmc3ChIV0/BptH8g362P95DuTfaI/EN+tj/eXjnRkWJHet9PNU079eIEHoqyyVp4jtCdJKAMf9rXexQbXYbLM+zzdGSMgOb5VCWhwxGBwcFzR2xjiGh2JIAwOZNAtYp2HIq9H6mrNWxjF+3ySWm1SPFGNLRxOdOzRccdmpgtBPJvtEZwN+tj/AHkn4Ndo0rzDfrY/esmmJgsCFT1VXVVTtaUE9mA6BULmTwXTZGEZiiuo5N9onEQN+tj/AHlLByZbQLgHRsYNXOlaQO5tSs9oz6goZZKcNUq88jH+Bf8A6h/2cSvua8TdfYbbHZ2QsN67UuccC97sXOpoNAOAC9wFV0jtZ5IVnE0tYAeCVCELBbEhQAghI11URNeyuIwIUfOF3RGB1/gnPcTgO88EOiwwwI/nFEUjW0FAkeyvaqhvpvw3Z5YzmTJI8F129ca1oNKl1DUk1wpoqy7lhdpYh9efu1tbC9wuB5LU6eNp1SfP0Wab+RD/AKjayQK8/J4rj3aiHwyy4f8AcwfatXVtyT4TaJZ6Xede593yqXjWl7CvoUGzRzU0UtK83IySlaVuODqV0rRTwz9tuSgGUa17719VPZVQ84R0ddCsvPLC7SxD68/dqwbk78M2g90LoTFIGl46d8OAIBxuihFRgoDoXtFyFObPG42B8D6K6Rsp26lOc2ooVG19DQ56HinPfTtWpbky+W4HHh/FPjZTE5poi44koY4g0PcURSkVUBfcwOI09ylkfRMbHXF2JPqRE6Nmpz8FIoAbuBy0PsKle+gqiKIm52eCWNteke4cFV9897m7PDC6IySSVusvXQGtpUl1DxGiqbOV9w/7IU+nP3a2the4XAWl08bTquPn6KgcqMYO1bXgPLZ9jGq9YYm85HgPLZ+0F7O9Fs+GWqW03eb50g3a3qUY1vlUFfJrlqvPgs91zXVrQg07DVWDWkNA5fZQXSjWJuvqtrb2Jy0CmWSt5XnA4WIU4c+fu1YNz+UNttm5h8BicWlzSH32m6KkHoihpj3KvMEjRcjyU4VEbjYHwPorm8XekMtQhvTx08UtL2fk+KHNoajvC1LcpklEjXVFUA1REqEqERCjeK5KRCImR0onppGqUoirm9O6dnt5ZzocHMqA+Nwa66cS01BBFerD0rwm8lFiPnz1+fH92tAAoghZiR4FgVrdExxuQFQfwT2L8pP+vH92mv5KLFkJJ6/Pj+7WgVQAvdtJ9RXmwi+kLP28lFiyMk9fnx/dr3N2dzLNYHOfDfc9wpekcHEDOgoAAO5WNzaparwyvIsSvWxMabgBRy44a6IYKHHPipAEjhVYLYnJktKYpwSAaoijYKHHuUyQhARE19KYqNjaEV7upSgalKQiLw95t17Pb2tbOHAsJLXMN1wrmKkEEHrCrh5JrD+Un/Xj+7V+GCKLNsr2iwK1uiY43ICz/wDBPYtZJ6fPj+7T/wAE1h/KT/rx/dq/poFF7tpPqK82Ef0hUL8E9h/KT/rx/dr093NyLLYpDNEJHOoWgyOBLQc6BrQMeKtRFU5DK8ixK9EMYNw0JAlTQKIIqta2Jl3hkpAlSIiVCEIiEIQiISIQiJUIQiJEqEIiEiEIiVCEIiQpUIREJChCIlQhCIhCEIiEIQiIQhCIhCEIiEIQiIQhCIv/2Q==',
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
                                          'Unit Testing',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 106.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Local unit testing',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 11.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 133.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Instrumentation testing',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 10.0,
                                                        ),
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
                                      'data:image/jpeg;base64,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',
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
                                          'Security',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 61.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Encypt',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 72.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Decrypt',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 89.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Proguard',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/apk-file-6927342-5651084.png',
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
                                          'App Release',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 97.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Signed APK',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Container(
                                                  width: 98.0,
                                                  height: 20.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF4DB9EC),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(1.0, 2.0),
                                                        spreadRadius: 1.0,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Text(
                                                    'Play Store',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
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
