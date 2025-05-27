import '/flutter_flow/flutter_flow_util.dart';
import 'delete_student_widget.dart' show DeleteStudentWidget;
import 'package:flutter/material.dart';

class DeleteStudentModel extends FlutterFlowModel<DeleteStudentWidget> {
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
