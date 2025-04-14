import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'creating_essay_ques_widget.dart' show CreatingEssayQuesWidget;
import 'package:flutter/material.dart';

class CreatingEssayQuesModel extends FlutterFlowModel<CreatingEssayQuesWidget> {
  ///  Local state fields for this page.

  int? index = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for QuestionField widget.
  FocusNode? questionFieldFocusNode;
  TextEditingController? questionFieldTextController;
  String? Function(BuildContext, String?)? questionFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    questionFieldFocusNode?.dispose();
    questionFieldTextController?.dispose();
  }
}
