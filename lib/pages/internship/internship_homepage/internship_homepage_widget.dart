import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'internship_homepage_model.dart';
export 'internship_homepage_model.dart';

class InternshipHomepageWidget extends StatefulWidget {
  const InternshipHomepageWidget({Key? key}) : super(key: key);

  @override
  _InternshipHomepageWidgetState createState() =>
      _InternshipHomepageWidgetState();
}

class _InternshipHomepageWidgetState extends State<InternshipHomepageWidget>
    with TickerProviderStateMixin {
  late InternshipHomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 2000.ms,
          duration: 2000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-100.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 2000.ms,
          duration: 2000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-100.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 2000.ms,
          duration: 2000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-100.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InternshipHomepageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Internship_homepage'});

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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                                Icons.menu_rounded,
                                color: Color(0xFD04045F),
                                size: 25.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 0.0, 5.0),
                                child: Text(
                                  'Internships',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Noto Sans',
                                        color: Color(0xFF1344A1),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 3.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: Color(0xC0DEE1E7),
                                icon: Icon(
                                  Icons.search_outlined,
                                  color: Color(0xE316191A),
                                  size: 25.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.notifications,
                                color: Color(0xFD04045F),
                                size: 25.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'INTERNSHIP_HOMEnotifications_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.pushNamed('Notification');
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/Screenshot_2023-02-11_155449-removebg-preview.png',
                  width: double.infinity,
                  height: 221.3,
                  fit: BoxFit.contain,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Internships, Hackathon  \n& Challenges',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans',
                                    color: Color(0xFF1344A1),
                                    fontSize: 18.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Text(
                            'Apply to a profusion of hiring opportunities & work with your dream companies!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 5.0, 20.0, 5.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_e6wvfg0e_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('All_Internship');
                            },
                            child: Container(
                              width: 98.2,
                              height: 96.4,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_171138.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 1.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 5.0, 20.0, 5.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_1i33e74h_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('Hackathon');
                            },
                            child: Container(
                              width: 98.2,
                              height: 96.4,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_170847.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 1.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 5.0, 20.0, 5.0),
                          child: Container(
                            width: 98.2,
                            height: 96.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  'assets/images/Screenshot_2023-02-13_170611.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Practice & Join Dream Companies:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans',
                                  color: Color(0xFF1344A1),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 0.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 66.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://cdn.cookielaw.org/logos/dd6b162f-1a32-456a-9cfe-897231c7763c/4345ea78-053c-46d2-b11e-09adaef973dc/Netflix_Logo_PMS.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Godrej_Logo.svg/2560px-Godrej_Logo.svg.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://1000logos.net/wp-content/uploads/2016/10/Apple-Logo.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://cdn.mos.cms.futurecdn.net/5StAbRHLA4ZdyzQZVivm2c.jpg',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/9/9d/CRED-LOGO2.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ3gtlghOcUUy-ncEKQbb4H0LyjkHSK8mUwQEjsQc&s',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/9a8a48106163451.5f897528aa888.jpg',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Blinkit-yellow-rounded.svg/1200px-Blinkit-yellow-rounded.svg.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://atlas-cms-assets.s3.ap-south-1.amazonaws.com/tr_logo_1_52542ceb1f.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'data:image/png;base64,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',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'data:image/png;base64,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',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEX///8AAAB9fX1JSUnS0tKSkpKvr696enqqqqo+Pj7i4uL09PTPz8+ysrK2trb4+PjZ2dnn5+ejo6PFxcVtbW2JiYlycnLAwMAiIiLt7e2Dg4MtLS1BQUHk5ORMTEw5OTliYmIMDAyenp4VFRVkZGQMFSvBAAAC7ElEQVR4nO3afVuyMBSA8eFLGKIiiWa+Vfb9P+MjiNvYJj0VzeV1//4Sdtg8kWcMEAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPMlHTvlciPXo4YrJajDTOxnYIaOdMZCjm5GXDKMrnoTIrrVVXqeqkxdH+6I5jrOzsDOMok166aRwtL6NG+O4QoLPMIriupOeq3Hy+TheMgTC9/zoVFaR5ND/3L6cNt63rqZYjTJ4dAVsvGT4o0pTKic1Z6GMorUcZekO+BsZvgn3fHiSfzaKlwwXsdMyE2K+7P2H5Wnem8aulnh4GSRz97T0kiHuRrKrJWOzaabaZmqfourJOjG17/dprH79E7MtVW3ymyVauejJyIVVSs4H9K391p/x12kZTs22gSPDnbNixlYmQ6PzIDL88jl8kpH2OazmgzyEDEU6qKVrs2ms2tTvUO7TdopkYKoaM3u3n6RwX2ZDKTPbdsWwhf6zndrNRSYcBxUzc5Bf11ZLU7tQaOZapLq+7h8vn3pruXMfSC1tmy1sT3qkmi1e5Wpjo9Yd01AzbDuHzWCV4d6xLolXt8wQCF/nv0MhDkZoKoKtNK21dKVHqgz7Qrw3A48i3Ay/Mx9uT4vCZlxx4wy7vqYpV1R54ypmd7oCV5v+r2lwBzpeH1b/6okWVG6v08amX12v8R/LzYmKORjbYdXS79yn2RudVjGhzBad3GurzqH4kNvVv/5Nz2FX90svgedZcty8PzpWHf16Prgr3Tx7WhqH10+dzj3EdS1KzajF9a/VoeiKLz0/tJ6Q9uvez7dr6vI8tY79GxnmbRkWeiI3yrCb5/iH5tGHj7r37NTFtqg3VhtjkGcvGQLh+1GlubxqYL2LcZD9HyO5kHi4TaX5QYZHeZPGqqV72X+u0vhrs0Vfe//VynArm+Yv8uPE6sNLht99R7hxgZ6ah2tLMG2BbI6VCwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADw5B8EvDZlGO3ajwAAAABJRU5ErkJggg==',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'data:image/png;base64,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',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'data:image/png;base64,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',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'data:image/png;base64,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',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  'data:image/png;base64,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',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.network(
                                  'https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 30.0, 0.0, 0.0),
                        child: Text(
                          'Internships',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans',
                                    color: Color(0xFF1344A1),
                                    fontSize: 15.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Apply for full-time & part-time internships offering certificates, PPOs & more!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_eew6as6m_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('paidinternship');
                            },
                            child: Container(
                              width: 150.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_003952.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_wniruvd9_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('virtual_internship');
                            },
                            child: Container(
                              width: 150.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_004327.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_9e2q1yt1_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('Certificate_internship');
                            },
                            child: Container(
                              width: 150.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_004604.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_xeegohie_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('Parttime_Internship');
                            },
                            child: Container(
                              width: 150.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_004752.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 45.0, 0.0, 30.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 330.8,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Screenshot_2023-02-13_005309.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 330.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Screenshot_2023-02-13_005511.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 330.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Screenshot_2023-02-13_005714.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 330.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Screenshot_2023-02-13_005950.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 330.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Screenshot_2023-02-13_010118.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: 330.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Screenshot_2023-02-13_010425.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Hackathons',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans',
                                    color: Color(0xFF1344A1),
                                  ),
                        ),
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
                            10.0, 8.0, 10.0, 0.0),
                        child: Text(
                          'Get pre-placement offers (PPOs) from your favorite companies via case study competitions,hackathons & more!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(1.0, 10.0, 15.0, 40.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 15.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_2gitjoet_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('offline_hackathons');
                            },
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_200925.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 15.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_xzu709gh_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('Online_hackathon');
                            },
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_200041.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INTERNSHIP_HOMEContainer_rp0kgz1e_ON_TAP');
                              logFirebaseEvent('Container_navigate_to');

                              context.pushNamed('Challenges');
                            },
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Screenshot_2023-02-13_200541.png',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
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
      ),
    );
  }
}
