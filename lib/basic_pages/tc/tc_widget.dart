import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tc_model.dart';
export 'tc_model.dart';

class TcWidget extends StatefulWidget {
  const TcWidget({Key? key}) : super(key: key);

  @override
  _TcWidgetState createState() => _TcWidgetState();
}

class _TcWidgetState extends State<TcWidget> {
  late TcModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TcModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'TC'});
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 47.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://wallpaperaccess.com/full/1556608.jpg',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 1.0),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.chevron_left_outlined,
                              color: Color(0xFD04045F),
                              size: 25.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TC_PAGE_chevron_left_outlined_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_back');
                              context.safePop();
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 5.0, 0.0, 5.0),
                              child: Text(
                                'Terms & Conditions',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Merriweather',
                                      color: Color(0xFD060672),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 0.0),
                            child: Text(
                              'PRIVACY POLICY',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xD023282B),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 3.0, 10.0, 0.0),
                            child: Text(
                              'This privacy policy applies to all Users who access this platform and are therefore required to read and understand the Policy before submitting any Personal Information. This privacy policy governs your use of the application of ‘EduVista’. By submitting Personal Information, you are consenting to the use and processing of such information in accordance with this policy.',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xD023282B),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 12.0, 10.0, 0.0),
                            child: Text(
                              'By using our app, you agree to the following terms and conditions:',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xD023282B),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 7.0, 10.0, 5.0),
                        child: Text(
                          '1.\tAcceptance of Terms: By using our EduVista, you agree to be bound by these Terms and Conditions, as well as our Privacy Policy. If you do not agree to these terms, please do not use our app.\n2.\tUser Accounts: In order to use our app, you will need to create a user account. You are responsible for maintaining the confidentiality of your account information, including your username and password. You agree to notify us immediately if you become aware of any unauthorized use of your account.\n3.\tUse of the App: Our app is intended to be used solely for the purpose of learning new skills and finding internships. You agree to use our app only for lawful purposes and in accordance with these Terms and Conditions.\n4.\tChanges to the Terms and Conditions: We reserve the right to modify these Terms and Conditions at any time, without prior notice. Your continued use of our app after any such modifications constitutes your acceptance of the revised Terms and Conditions.\n',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xD023282B),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 2.0, 10.0, 5.0),
                            child: Text(
                              'Thank you for using our App ‘EduVista’',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xD023282B),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
