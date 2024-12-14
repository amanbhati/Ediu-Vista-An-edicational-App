import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chatroom_model.dart';
export 'chatroom_model.dart';

class ChatroomWidget extends StatefulWidget {
  const ChatroomWidget({Key? key}) : super(key: key);

  @override
  _ChatroomWidgetState createState() => _ChatroomWidgetState();
}

class _ChatroomWidgetState extends State<ChatroomWidget> {
  late ChatroomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatroomModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Chatroom'});
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
          child: FlutterFlowWebView(
            url: 'https://organizations.minnit.chat/343520435485946/EduVista',
            bypass: false,
            height: MediaQuery.of(context).size.height * 1.0,
            verticalScroll: true,
            horizontalScroll: false,
          ),
        ),
      ),
    );
  }
}
