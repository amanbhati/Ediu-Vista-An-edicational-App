import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_dev_video22_model.dart';
export 'web_dev_video22_model.dart';

class WebDevVideo22Widget extends StatefulWidget {
  const WebDevVideo22Widget({Key? key}) : super(key: key);

  @override
  _WebDevVideo22WidgetState createState() => _WebDevVideo22WidgetState();
}

class _WebDevVideo22WidgetState extends State<WebDevVideo22Widget> {
  late WebDevVideo22Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebDevVideo22Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'WebDevVideo_22'});
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'WEB_DEV_VIDEO_22_arrow_back_ICN_ON_TAP');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.pushNamed('HomePage');
                              },
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Web Development',
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: FlutterFlowYoutubePlayer(
                          url:
                              'https://www.youtube.com/watch?v=j8fubBAFq_I&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=33',
                          autoPlay: false,
                          looping: false,
                          mute: false,
                          showControls: true,
                          showFullScreen: true,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Lecture 22: Basics| Javascript',
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
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0.0, 0),
                            child: TabBar(
                              labelColor: Color(0xF95A5A5A),
                              unselectedLabelColor: Color(0xF9717575),
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              indicatorColor:
                                  FlutterFlowTheme.of(context).secondary,
                              tabs: [
                                Tab(
                                  text: 'Videos',
                                ),
                                Tab(
                                  text: 'Study Material',
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=2lRQTdpwhFk&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=34',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 23: How it works?|Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=hRaDYCHqFQQ&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=35',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 24: DOM| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=zSt-KI0HryY&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=36',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 25: Javascript in web page',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=sTk5BxgxDDI&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=37',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 26: Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=VsEfh-EqNT8&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=38',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 27: If else and switch',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=7xgJmIOG8GE&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=39',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 28: Loops| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=5kY4Th53w70&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=40',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 29: Basic Functions| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=0hQPN4OQgU4&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=41',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 30: Strings| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=vCZqAriaPZw&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=42',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 31: Reference datatypes|Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=4RjmmZnDFVA&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=44',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 32: Coercion and Type conversion',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=LgZZLeWKGsI&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=45',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 33: About objects| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=xw0J0v3Zkuo&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=46',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 34: Object Exercise|Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=0QSSUHTJ-sU&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=47',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 35: What is class| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=QrFYRTcKXAU&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=48',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 36: About Arrays| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=XrAyzuNanZo&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=49',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 37: How code\'s executed|Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=101q0HoCDKs&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=52',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 38: What is hoisting| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=aHPK2rsonZA&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=53',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 39: \'This\' keyword| Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=4ZSL8_zlq9Y&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=54',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 40: DOM Manipulation|Javascript',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 5.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: FlutterFlowYoutubePlayer(
                                                url:
                                                    'https://www.youtube.com/watch?v=fYR3i0mcE5c&list=PLfqMhTWNBTe3H6c9OGXb5_6wcc1Mca52n&index=55',
                                                width: 113.0,
                                                height: 60.0,
                                                autoPlay: false,
                                                looping: false,
                                                mute: false,
                                                showControls: false,
                                                showFullScreen: false,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Lecture 41:How to host static website?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Merriweather',
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
                                Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
