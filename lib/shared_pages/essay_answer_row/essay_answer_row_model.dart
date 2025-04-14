import '/flutter_flow/flutter_flow_util.dart';
import 'essay_answer_row_widget.dart' show EssayAnswerRowWidget;
import 'package:flutter/material.dart';

class EssayAnswerRowModel extends FlutterFlowModel<EssayAnswerRowWidget> {
  ///  Local state fields for this component.

  String? userAnswer;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
