import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'creating_quizz_widget.dart' show CreatingQuizzWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatingQuizzModel extends FlutterFlowModel<CreatingQuizzWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  QuizzesRecord? quizDocID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
