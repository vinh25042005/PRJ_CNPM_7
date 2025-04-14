import '/flutter_flow/flutter_flow_util.dart';
import '/shared_pages/student_side_bar/student_side_bar_widget.dart';
import '/index.dart';
import 'classes_student_widget.dart' show ClassesStudentWidget;
import 'package:flutter/material.dart';

class ClassesStudentModel extends FlutterFlowModel<ClassesStudentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StudentSideBar component.
  late StudentSideBarModel studentSideBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    studentSideBarModel = createModel(context, () => StudentSideBarModel());
  }

  @override
  void dispose() {
    studentSideBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
