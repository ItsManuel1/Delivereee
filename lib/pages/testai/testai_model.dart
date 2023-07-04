import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestaiModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputuser widget.
  TextEditingController? inputuserController;
  String? Function(BuildContext, String?)? inputuserControllerValidator;
  // Stores action output result for [Backend Call - API (ai)] action in Button widget.
  ApiCallResponse? apiResultpuv;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    inputuserController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
