import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginBSModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for EmailLogin widget.
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // State field(s) for PassLogin widget.
  TextEditingController? passLoginController;
  late bool passLoginVisibility;
  String? Function(BuildContext, String?)? passLoginControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passLoginVisibility = false;
  }

  void dispose() {
    emailLoginController?.dispose();
    passLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
