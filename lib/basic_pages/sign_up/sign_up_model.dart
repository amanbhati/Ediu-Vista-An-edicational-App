import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField_first widget.
  TextEditingController? textFieldFirstController;
  String? Function(BuildContext, String?)? textFieldFirstControllerValidator;
  // State field(s) for TextField_last widget.
  TextEditingController? textFieldLastController;
  String? Function(BuildContext, String?)? textFieldLastControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField_gender widget.
  TextEditingController? textFieldGenderController;
  String? Function(BuildContext, String?)? textFieldGenderControllerValidator;
  // State field(s) for TextField_contact widget.
  TextEditingController? textFieldContactController;
  String? Function(BuildContext, String?)? textFieldContactControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  void dispose() {
    textFieldFirstController?.dispose();
    textFieldLastController?.dispose();
    emailController?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textFieldGenderController?.dispose();
    textFieldContactController?.dispose();
  }

  /// Additional helper methods are added here.

}
