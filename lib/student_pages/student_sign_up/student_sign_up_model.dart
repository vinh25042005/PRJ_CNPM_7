import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'student_sign_up_widget.dart' show StudentSignUpWidget;
import 'package:flutter/material.dart';

class StudentSignUpModel extends FlutterFlowModel<StudentSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
