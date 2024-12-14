import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'backend_development_model.dart';
export 'backend_development_model.dart';

class BackendDevelopmentWidget extends StatefulWidget {
  const BackendDevelopmentWidget({Key? key}) : super(key: key);

  @override
  _BackendDevelopmentWidgetState createState() =>
      _BackendDevelopmentWidgetState();
}

class _BackendDevelopmentWidgetState extends State<BackendDevelopmentWidget> {
  late BackendDevelopmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackendDevelopmentModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Backend_development'});
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
                                10.0, 10.0, 0.0, 0.0),
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
                                    'BACKEND_DEVELOPMENT_arrow_back_ios_ICN_O');
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
                                'Backend Development',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24.0,
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
                        'BACKEND_DEVELOPMENT_ListView_t10sfshy_ON');
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/coding-language-6954433-5708996.png',
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
                                          'Programming language',
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
                                      'https://img.freepik.com/premium-photo/framework-3d-render-icon-illustration_726846-3007.jpg',
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
                                          'Frameworks',
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
                                      'https://cdn.dribbble.com/users/7056161/screenshots/16253298/media/d30bf813b782f06031b75cf0fd171fb1.jpg?compress=1&resize=400x300&vertical=top',
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
                                          'Database',
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
                                      'https://cdn3d.iconscout.com/3d/premium/thumb/server-4059216-3364068@0.png',
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
                                          'Server',
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
                                      'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBISEREREhISEQ8REhERERIRERIRERESGhQZHBgUGRgcIS4lHB4sHxkYJjgmKy8xNTU1GiQ7QDs1Py40NjEBDAwMEA8QGhISGj0kISExNDQ0NDQ0NDE0NDQxMTE0NDQ0NDQxNT00NDQxNDQ0NDE0MTQ0NDQxNDQ0MTQ0ND80OP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQQFBgcDAgj/xABLEAACAQIBBwYMBAIHBwUAAAABAgADBBEFBhIhMUFRFBYyUmFxBxMiU3KBkZKTobHRI0KywVTSFzNilKLT8DV0goOEwuEkNENjc//EABgBAQEBAQEAAAAAAAAAAAAAAAABAgME/8QAIxEBAQADAAICAgMBAQAAAAAAAAECERIhMQNBBFETMmGhFP/aAAwDAQACEQMRAD8A2aJCZ9nnnk1Oo1rbNg6+TVqjarb0XgRvMsm0t0ut5lKhR/rKqIduDMNI+rbGJzos91UnuR/3Exw3LYlmYsxOJJJJJ4kw5WZrmM9VsPOm06ze4Yc6bXrN7hmPcsbjF5Y3GOYdVsPOm067e6Yc6bTrt7pmPcsbjDljcY5h1Ww86LTrt7phzotOu3umY9yxuMOWNxjmHVbDzotes3umHOi16ze4Zj3LG4w5Y3GOYdVsPOi16z+4Z5OdNrxf3R95kHLG4w5Y3GOYdVr/ADqteL+6PvPXOi16ze4Zj/LW4xOWNxjmHVbDzntes3umHOi16ze6Zj3LG4w5Y3GOYdVsPOi16ze6Yc6LTrt7pmPcsbjDljcY5h1Ww86bTrt7phzptOu3umY9ytuMOVtxjmHVbBzptes3uGHOm06ze4Zj/K24w5W3GOYdVsK50Wh/+Rh303/YR5bZWt6hASqhY7FJ0WPcDgZiYvG4zvRyiRtk5Oq3SLM+zazqKlUqsWpnAYk4lO0dnEezgb8pBGI1g69W+SzTUu3uESLIqKzkyjyazuK46SUzoem3kp/iImEoxOLEksSSSdZJO0ma14UKmjk5h16tJf8AFpf9syJNk1ixl7dSYk8M2AxklRt0CjSXSJGs6TA+rDV7cZrbv+N+Ln89vP1+zCGMWoMGZcccDhj2TzjDhnjccrjfcehFk1mxkynXLvUxZEKqEBK6TEY4kjXhhw4zvnPkmnSRKtIFAXCMmkWGsEhgWOO4gjHeJ5L+Z8c+b+H7/wCN/wAOXPX0ruMJ5M621M1HRAcC7pTBOwFmAx+c9Vsk3XJ5wiGaCc2bXQ0Arh8MPG6bF8esVx0fVhKBWQqzIcMUZlOGzEHA4eyef8f8rD5t8/X7ayxuPt4xhjEhPUwWLjPMWAuMMYkIC4wxnmLA9qMZ60DLvmhm7QqW63FZfGNUL6C6TKqKrFfykYkkE6+yWHm5Z/w6+/V/mmdxrmsn0DDQM1jm5Z/w6+/V/mhzcs/4dffq/wA0dReayYrPOM0vLOa1s1GoaSeKqojOhDuVYgY6LBidR4jZ8pmZMsu2bNO9CuVM13MTKJr2agnFqLGl26IAK/I4eqY1jNH8FVXFbpdwNJh7HB/aTL0uPtocIQmHRSPCv/s9P95p/oeZQmyat4WP/YJ/vNL9FSZSuybx9MZew64gjiMJ5p3ddRoYKcNQdscQP3nSEtjp8Xz/ACfDbcLrbygO84naSdpPGejCEONtt3XfJ+U61rUZ6YDo4Aem2OBw2HVsOvbOuUMsVroqagVETWtNMSNLDpEnafvGcQTj/wCf47n/ACc+f23/ACZc878Fnl9LUVJV1IZSNoYHEEeueoTtZthMnPG8ZNDxdNHwwNbysfSCbMfXh2SGHt7TrJhFnL4vg+P4t8TW1uVvsQhCdmRCEIBCEIBEMIQJfIedlxZI1JaaV6OkWRWYo1Mk4sAwB1E68CNpMlP6Sa/8Cn95f/LlSMSZ1Guqt39JNf8AgU/vL/5cP6Sa/wDAp/eX/wAuVGLhHMOqseUs+Lq5ptSWilsjgq7LUao7Idqriq6OOzHXq4bZXxEgJZNJbss0PwUHXdd1L6vM8mheCjpXXo0vq0mXox9tJhCEw6qh4R7CrcWaU6KeMflFNtHSVfJCvicWIG8TPUzRv8P6jDvq0f55seU+gvpj6GMBNSsWeWXcz77zS/FpfzReZ195tfi0/vNRhL0mmX8zr3zafFp/eHM6982nxaf3moQjo0y/mde+bT4tP7w5nXvm0+LT+81CEdGmYczb3zafFp/eHMy983T+Kk0+EdGmY8y73qU/iLDmZe9Sn8RZp0I6ppmPMy96lP4ixeZl71E+Is02EdGmZczL3qJ8RYnMy96lP4izToSdGmY8zL3qU/iLA5mXvUp/EWadCXo0y/mbe+bT4qQ5m3vUT4qfeahCOjTL+Zt75tPip94nM2982nxaf3mowk2aZdzNvfNp8Wn94czr3zafFT7zUYS9Lpl3M6+82vxaf3hzPvvNL8Wn/NNRhHSaZac0b7zAP/No/wA0ufg6yRcWzXPj6fi9MU9Hy0fHDSx6LHiJYRHtjv7hJb4WTyewhCZbMcqdBfTH0MYCP8qdBfTH0MYCWM32WEISoIQhAIQhAIQhAIQnio4VSxOCqCSeAAxJgFWsiDSdlVeLECNDleh5wHuVz+0z7KOWKlaqzknRxIRdyruEVL84TXLn1+mgDK9Dzn+F/tHFG6p1Og6t2A6/ZM6GUO/2xzb5WIOrUdoYbQY5XpoUI0ybdeNpo+8jBhwYbf8AXbHcy3sQhCAQhCAQhCAQhCB6Ee2O/uEZCPbHf3CSrD2EISNGOVOgvpj6GMBH+VOgvpj6GMBLGb7LCEJUEIQgEMYSqZyZw6OlRot5WsVKg3cVU/vLJtLdJa9y7SptoAl3GohcMAeBPGerfLNNukpQcekPXhM5SoQcY/oX+E1zGOqvdzlehTGJqBjuCeUT9vXKxlvOB6qNTproI2pjji7Dh2CQ1xc6W+NHuImMiXK1x8XhAmc6lyOM4NdCaDoNHVsRjIoXInancjjAvOTL/wAUPIwIPSRthPEHcZO2+V6bdI6DcH2eptkzehfEb5IU8oAjXM3Hay6XG8y/RpnRU+Mb+yRojvb7Ywtsuo/SQoOsDpgd+rGUW4q4nHGdLS+Kka45h1WmK4IBBBB1gjWCIsrOScp6Pah6S9X+0vZ2SyI4YAg4gjEEbCJmzTcu3qEISKIQhA9CPbHf3CMRH1jv7hJVh7CEJGjHKvRX0x+lowEf5U6C+mPoYwEsZvssIQlQQhEMCBztymaFABDg9QlARtC4eUR27B65nyvjrMuWflq1SirrrNMlj6J2/tKHbuTN4+nPL2dlp5L4RMY2uK2E0j3WucIxqXROoR1k3JlW7fRQHR/Mx2ATQci5p0qIBYB36zDHX2DdJcpFk2z61yNdVta02Cne3kj5ySp5l3B6TovrJ/aaglqg3T2KS8B7JjpeWXPmTXHRqIT26Q/aMLnNu8p69DTA3odL5bflNhNFeAnJ7VTs1fOOqcsSFd0ODggjUQRhhHtC6x3zScq5Cp1lIqUweDjUw9cz/LebtS1JdMXo49IDWvYw3d83MtpZooqYxQ0jravjHymVEha3hQg4y3ZtZUFRmp7iC6jgd4HZvlAfGWjMO1Y1HqnoouiO1j/4B9smXpZ7XyEQRZzdBCEICiPrHf3CMRH1jv7hJVh7CEJGjHKnQX0x9DGAj/KnQX0x9DGAljN9lhCEqEiGLPFR1UFmYKo2liAB6zAic5qqpa1GO0qaajiWGH0xPqmZ00lmzxyqtZ0p020kp4ksNjOeHYBv7TK6uoTeM1HLK7rnWfATzkrJtS7rBF6O123KvGcrlppeaWSBb26kj8WoA78RjsX1D95crqLJupDJeTadvTVKagADWd5PEx+BEEWc3QRYQgESLCAmEZ3VorA6gQQQVIxBEexIGS5z5ENtU8ZTB8S52dRur3cIytqmImqZZyelWm6MMVcYHs4MO0HXMlak1GrUpN0kYqfv3TeN252aSlJQZec0XUU3QamDafeCAP2+coVF5ZM37opUVhiVwIYDbon/AED6pb5iTxV7EWcqFdHGKMGHYdneN06zm6iEIQFEfWO/uEYiPrHf3CSrD2EISNGOVeivpj9LRgI/yr0V9MfpaMBLGb7EIQlRyuKwpo7t0UVnPcBjM0vcqPcuzu2rE6K4+Sg4AS8Z0Po2lbDeoHtYCZjQaaxc8jt0E4tFLRGm0dMiWnjruih1rp6beio0iPlh65q1WqtNGd2CIgLMx1BQNpmf5jU8bt26lFsO8so+8ms/a5W3pINlSsoftVVZsPeC+yYy83S4+Jtwu8+FVvw6ahNzVWIZu3RGz1mSmRM5qdwwRgKdRujg2kj9gOrA9hkJmnm9Qq0TXqotR3d1GmoYIqsVwAPcZCZasxZ3TrS8lVCVqYGxGxOzsxXH1xqXwbs8tUxlazlzie2qJSpqmJp+MdnBbAaRAAAI4GWKm+kqtxAPtEz/AD7BN2ANvJ1w995mTy1b4Az7fHAvQ7ijfzyy5CzkS5bQYBKpBK6JxRwNujjrBHCNbMZPFCmrVKAPi0DKxp6QOiMQVOvHslUyWqi/pLQxCG60qYwIwpgktq3DR0tXAzWpfpndiz5zZ01LWsKSqiroB/GOrNpEk6lwIGrD5yJ57VsNLGlo8fFt/PL1XtEqdJQe8A/WZpc2ycvNLRGgbxFKgADRLriMPXGOqt3FgzezqqXVwtBlR0ZXLPTRl0MBiCcWIwOzvIkFnzaeLuqdQahUQqe1l3+wr7JpFta00HkKFx4ACVHwi0vw6T7xUw9qn7SS+SzwqVFtQkpZXOhImhsndWnRlZbbKIU6WkQdxBwIMt2Sr3x1NX/NiVbDrD/QPrmXB5eszHxpOODj9P8A4mcp4XG+VlhEizDoUR9Y7+4RiI+sd/cJKsPYQhI0Y5U6C+mPoYwEf5U6C+mPoYwEsZvsRIsSVENnWMbSt6I/UJmFEzW8q2/jKNRDsdSvdiNsx2606DsjqVKnAzWLnl7PgZ7wjGjcBo9QzaJ3MhsLtx1qJ+TrJDwgf1dr/wDq36GkLkCt4u7osdSsTTb/AIhgPnhJnwhnRpW7norWOkdwxRgMfXM3+zU/qrNndXeiRQp1ygJGNN6iJpb9QIGMa3dR2ZxVR0q6I0vGMzORuOJOyaFmbRHIqRKjyzUcYjWQXbA+zCVbPldC7GrDxlFFTAdJgzYgduse2JfOks8baJa9BPQX9IlBz6OF2pG0W6freX+3UhEB2hVB78Jn+f50bpCdj0Aq6trB2xH+Ie2Zntq+nO1zVu6iI5rKgdVbDQYkAjHjLRm9mylqTUZjVrsNHTYYBRvCjdJqyQrTpg6iKaAjtCidouVJjAZmdz/tP/raX6llkzkzpNpWFEIg8gPpvpEHEnUACOHGUp8p02r8oNRdPxgrah5IcEEDDHZqEuMTKtbEqHhEb8CkN5qg+xW+895AztNzcJQKo2mrtpU9IaGiMcWBJ1bu8iR3hAuQ1WjSH5Fao3exwH6fnJJ5LfCt0RqnQmIgwE4VquE6MnKmXnMn+qqH+2PpM0W6JIA1zVs1LRqVsmmMHclyDtGIAA9gHtmb6MZ5TkWIIsw6lEfWO/uEYiPrHf3CSrD2EISNGOVOgvpj6GR4khlXoL6Y+hkeJYxfZYQiSjy64jCQeVsh0qw/Eph8NjjUwHeNcnohhLGP5byObSoNEk031oTt7Qe0avbOdB5fc8snipbuQNafiL6to9mPymeW+I1Tpjdxzs1UkoxGrUdoO8GaJkyul1QRnAY4aLqcCA426vn65nFF5YMhZRNB8Tiab4CoBu4OO6MpuLLqr0igAADAAYADYBPD26MwZlBK6xiAcDxnqm4YBlIKkAgjWCOM9zm6CcqlujEFlDFTiMRjgeM6wgEIQgNrmyp1Omit6QB+ojY5Ft/NU/cT7SSiQaMktaNBXdVRFCkuwVVwUazsmX390bi4qVj+dvJHVQalHsAlmzyy2HxtaZxXH8VhsJH5B3Hb2yrImAm5Ptzyv0HOAnG1sWuKq012sfYN5nqpjLjmFk7APXYayfFp2DUWP09ktuok80+yLmpQo6LFNJxr0m1nHu2CWVRACKJz26SaLFiRYUoj6x39wjER9Yfm9UlWHsIQkaM8pj8MnqlT88P3kYpk3UQMpU7CCD3GQGtGKN0l+Y3MOyWM5O0SIDFlQRIQMCvZ5XYp2xX81VtAdg2sfZq9czxEl08INJjRSooxFJiWA3KdRPtAlEtroMJvH055ez1dUd29bCMVaelfCaRbMlZWajq1vSOspjrTtX7S2Wl3TqrpU2DDfxXsI3TMaF1hqOyP6FcghqblHG8HAzNx2sumjwlPt846yanVag4nyW9o1fKPkzqp/mp1Af7JVvtM81rqLFCV5s66Q2U6hPboj95H3OdtQ6qdNE7WJc/tHNOot1WoqKWZgqjWWYgAeuU7L+dGkDStyQDqapsJHBeHftkJfXtWscalRm4A6lHcBqEZnATUx0zcrXNU3mBis88FppHSmol1zRuQNKju6a9+oMPp7DKBUuNGWfMLTqVXqYeRTUrjxY7vZj8pMvRPbQBCIDFxnN1LCJjDGB6xj/J41Me0D/XtkWz7ANZJwAG0nhJq2paKgHbtPfJVxd4QhI0I0vbJKoGOKsOiw2js7R2R3CBXqlpXp/k8YvWQjH1qdfsxnE1XG2lWH/Kc/tLNCXbOlX5Q3m6vwn+0OUN5ur8J/tLRCNpz/qm3gaoMDSqEEEEGlUwIO0bJmucObtW1LVqdOpybHFtKm48VidhJGzHfN8nOrTVlKsAysCGUgEEEYEEHaJZlouL52t7oEbZ7qXAEvGcXguYualhUSmGOJoViwRfQcAnDsI9e6MsleCy6dsbuvTpUxtW3JqVGHDSZQq9+Dd031GOKqKXox2x3Suu2XzKPgntWT/01atQqgbXYVkY8WU4H2Ed0oeXc1b7J/l1kWpQx0RWpMXQEnUGBAZfWMN2JiZSpcbD2ndnjOvKuwSEtqhIjwNNIetWE5PXnAtOFZtUDtUuu2Mqt4OM9ZNyTd3tQ07amXIwLsSESmDsLMdQ36tpwOAl8yL4KEADXtdqjeatyadIdhYjSb1aMlykWY2qBTugd86VLgAbZdct+Ckg6dhX0P/puCxX/AIaigkdxB74zyV4Lbt3HK69KnSB8oUC1Sqw4AsoVe/X3SdReKrGS8mVrxyKaVCikCpUVGcLju1Db2TT8kWotqS0qdKqFUa/wqmJO8nVtlryXk6ja0loUECU0GoDaTvJO0k8THsxcttzDSrC4bzdX4T/aLyhvN1fhP9paISbOf9VgVnOylWPdSf7TtTo132Uyo6zkIB6tvylhhG10Y2VgEOkx06nHDBV7FH7x9CEjRYQhAIQhAIQhAIQhAIQhAIQhAI2vrRK1KpRcYpURkYdhGEcwgfOV7Re0r1LaqNF6blTjq0h+Vh2EYEd8QXYm5ZwZr2l+ByilpOowSohKVE7Aw2jsOI7JU38Edpj5F1dqOBNFsP8AAJ0mUcrhfpnXLBPL3QbUNZOoAayTwmir4IrXfd3ZHZ4kf9kn8gZhWFk4qoj1a661qXDB2Q8VAAUHtwx7Y7hxTvMzI/JLOnTZdGq/4lbjptuPcMB6jJ+EJzdSwhCAQhCAQhCAQhCAQhCAQhCAQhCAQhCAQhCAQhCAQhCAQhCARIQgEIsIBCEIBCEIBCEIBCEIBCEIBCEIBCEIH//Z',
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
                                          'API',
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
