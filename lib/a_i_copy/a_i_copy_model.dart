import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'a_i_copy_widget.dart' show AICopyWidget;
import 'package:flutter/material.dart';

class AICopyModel extends FlutterFlowModel<AICopyWidget> {
  ///  Local state fields for this page.

  String apiResponse = 'unset';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - roleDetect] action in Button widget.
  String? roleDetect;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Gemini)] action in Button widget.
  ApiCallResponse? apiResultxmc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
