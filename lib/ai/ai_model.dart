import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ai_widget.dart' show AiWidget;
import 'package:flutter/material.dart';

class AiModel extends FlutterFlowModel<AiWidget> {
  ///  Local state fields for this page.

  String apiResponse = 'unset';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - roleDetect] action in Button widget.
  String? roleDetect;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Gemini)] action in Button widget.
  ApiCallResponse? apiResultxmc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
