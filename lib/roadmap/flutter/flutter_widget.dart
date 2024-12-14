import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'flutter_model.dart';
export 'flutter_model.dart';

class FlutterWidget extends StatefulWidget {
  const FlutterWidget({Key? key}) : super(key: key);

  @override
  _FlutterWidgetState createState() => _FlutterWidgetState();
}

class _FlutterWidgetState extends State<FlutterWidget> {
  late FlutterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlutterModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Flutter'});
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
                        'https://quickblox.com/wp-content/uploads/2020/01/What-is-Flutter-and-why-it-is-a-game-changer-in-app-development-Copy.png',
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
                                    'FLUTTER_PAGE_arrow_back_ios_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.pushNamed('Flutter');
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
                                'Flutter',
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
                            'Wanna build a good UI? Learn flutter now!!',
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
                    logFirebaseEvent('FLUTTER_PAGE_ListView_w6sdaia3_ON_TAP');
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
                                          'Programming',
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
                                                    'Dart',
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
                                      'https://img.freepik.com/premium-photo/windows-programming-code-3d-icon_307432-38.jpg?w=2000',
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
                                          'IDE',
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
                                                  width: 94.0,
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
                                                    'VS Code',
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
                                                  width: 112.0,
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
                                                    'Android Studio',
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
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('FLUTTER_PAGE_menuItem_ON_TAP');
                            logFirebaseEvent('menuItem_navigate_to');

                            context.pushNamed('UI');
                          },
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
                                            'UI',
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
                                                      'Widgets',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                                      'Assets',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
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
                                      'https://static.vecteezy.com/system/resources/previews/009/418/804/original/analitics-3d-icon-illustration-for-your-website-user-interface-and-presentation-3d-render-illustration-free-png.png',
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
                                          'Static User Interface',
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
                                                    'View',
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
                                                    'ViewGroup',
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
                                          'Dynamic User Interface',
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
                                                  width: 77.0,
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
                                                    'GridView',
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
                                      'https://cdn.iconscout.com/icon/premium/png-256-thumb/version-control-4296066-3563401.png',
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
                                          'Animations',
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
                                                  width: 135.0,
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
                                                    'AnimatedWidget',
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
                                                  width: 65.0,
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
                                                    'Opacity',
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/cloud-storage-5402862-4521475.png',
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
                                                  width: 92.0,
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
                                                    'SqLite',
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
                                          '3rd Party Libraries',
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
                                                    'http',
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
                                                  width: 47.0,
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
                                                    'dio',
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
                                                    'get_it',
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
                                      'https://static.vecteezy.com/system/resources/previews/010/872/317/original/3d-message-notification-icon-png.png',
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
                                          'Behaviour Components',
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
                                                    'Permission',
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
                                                    'Notification',
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/reduce-brightness-5590929-4652932.png',
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
                                          'State Management',
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
                                                    'setState',
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
                                                  width: 69.0,
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
                                                    'Provider',
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
                                                    'Redux',
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
                                      'https://static.vecteezy.com/system/resources/previews/008/480/041/original/user-test-is-done-3d-icon-model-cartoon-style-render-illustration-png.png',
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
                                          'Quality Assurance',
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
                                                    'AppCenter',
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
                                                  width: 153.0,
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
                                                    'GooglePlay betatests',
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
                                          'Version Control',
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
                                                    'Git',
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
                                                    'GitHub',
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
                                                    'bitbucket',
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
                                                    'Firebase Auth',
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
                                                  width: 131.0,
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
                                                    'Firebase Database',
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
                                      'https://static.vecteezy.com/system/resources/previews/021/054/297/original/integration-3d-icon-free-png.png',
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
                                          'Native Integration',
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
                                                    'Xcode',
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
                                                    'AppStore',
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
                                                    'Java/Kotlin',
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
