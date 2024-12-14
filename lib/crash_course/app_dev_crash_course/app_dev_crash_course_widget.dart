import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'app_dev_crash_course_model.dart';
export 'app_dev_crash_course_model.dart';

class AppDevCrashCourseWidget extends StatefulWidget {
  const AppDevCrashCourseWidget({Key? key}) : super(key: key);

  @override
  _AppDevCrashCourseWidgetState createState() =>
      _AppDevCrashCourseWidgetState();
}

class _AppDevCrashCourseWidgetState extends State<AppDevCrashCourseWidget> {
  late AppDevCrashCourseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppDevCrashCourseModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AppDev_CrashCourse'});
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
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 354.4,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          'https://i.pinimg.com/originals/f5/05/24/f50524ee5f161f437400aaf215c9e12f.jpg',
                        ).image,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                          spreadRadius: 2.0,
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.24),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 25.0,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'APP_DEV_CRASH_COURSE_arrow_back_ICN_ON_T');
                                  logFirebaseEvent('IconButton_navigate_to');

                                  context.pushNamed('HomePage');
                                },
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'App Development Crash Course',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Merriweather',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/mXjZQX3UzOs',
                            autoPlay: false,
                            looping: false,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    'Android Development Tutorial For Beginners | Crash Course',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Merriweather',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w900,
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Slidable(
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        extentRatio: 0.5,
                        children: [
                          Builder(
                            builder: (context) => SlidableAction(
                              label: 'Download',
                              backgroundColor: Color(0xE104047B),
                              icon: Icons.download_rounded,
                              onPressed: (_) async {
                                logFirebaseEvent(
                                    'APP_DEV_CRASH_COURSE_SlidableActionWidge');
                                logFirebaseEvent('SlidableActionWidget_share');
                                await Share.share(
                                  'https://drive.google.com/file/d/1MLyJ8HnrGUTqFUpJo6kp9eKNS0NdOjVZ/view',
                                  sharePositionOrigin:
                                      getWidgetBoundingBox(context),
                                );
                              },
                            ),
                          ),
                          Builder(
                            builder: (context) => SlidableAction(
                              label: 'Share',
                              backgroundColor: Color(0xE104047B),
                              icon: Icons.share,
                              onPressed: (_) async {
                                logFirebaseEvent(
                                    'APP_DEV_CRASH_COURSE_SlidableActionWidge');
                                logFirebaseEvent('SlidableActionWidget_share');
                                await Share.share(
                                  'https://drive.google.com/file/d/1MLyJ8HnrGUTqFUpJo6kp9eKNS0NdOjVZ/view',
                                  sharePositionOrigin:
                                      getWidgetBoundingBox(context),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      child: ListTile(
                        title: Text(
                          'Study Material',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Merriweather',
                                    fontSize: 16.0,
                                  ),
                        ),
                        subtitle: Text(
                          'Download & Share Notes',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Merriweather',
                                    fontSize: 14.0,
                                  ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20.0,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 20.0),
                    child: Text(
                      'App development is the process of creating software applications for use on mobile devices such as smartphones, tablets, and wearable devices. It involves designing, coding, testing, and deploying apps for various platforms such as iOS, Android, and Windows. App development requires a combination of technical skills, creativity, and user-focused design.',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Merriweather',
                            color: Color(0xE3434748),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
