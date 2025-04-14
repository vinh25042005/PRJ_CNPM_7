import '/flutter_flow/flutter_flow_util.dart';
import 'student_submit_widget.dart' show StudentSubmitWidget;
import 'package:flutter/material.dart';

class StudentSubmitModel extends FlutterFlowModel<StudentSubmitWidget> {
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
