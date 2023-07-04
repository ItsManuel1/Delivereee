import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpBSModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for fullnamesg widget.
  TextEditingController? fullnamesgController;
  String? Function(BuildContext, String?)? fullnamesgControllerValidator;
  // State field(s) for emailsg widget.
  TextEditingController? emailsgController;
  String? Function(BuildContext, String?)? emailsgControllerValidator;
  // State field(s) for passwordsg widget.
  TextEditingController? passwordsgController;
  late bool passwordsgVisibility;
  String? Function(BuildContext, String?)? passwordsgControllerValidator;
  // State field(s) for rtpasssg widget.
  TextEditingController? rtpasssgController;
  late bool rtpasssgVisibility;
  String? Function(BuildContext, String?)? rtpasssgControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordsgVisibility = false;
    rtpasssgVisibility = false;
  }

  void dispose() {
    fullnamesgController?.dispose();
    emailsgController?.dispose();
    passwordsgController?.dispose();
    rtpasssgController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
