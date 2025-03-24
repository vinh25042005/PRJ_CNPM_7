import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'teacher_sign_up_widget.dart' show TeacherSignUpWidget;
import 'package:flutter/material.dart';

class TeacherSignUpModel extends FlutterFlowModel<TeacherSignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for teacherID widget.
  FocusNode? teacherIDFocusNode;
  TextEditingController? teacherIDTextController;
  String? Function(BuildContext, String?)? teacherIDTextControllerValidator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    teacherIDFocusNode?.dispose();
    teacherIDTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
