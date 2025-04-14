import '/flutter_flow/flutter_flow_util.dart';
import '/shared_pages/teacher_side_bar/teacher_side_bar_widget.dart';
import '/index.dart';
import 'classes_teacher_widget.dart' show ClassesTeacherWidget;
import 'package:flutter/material.dart';

class ClassesTeacherModel extends FlutterFlowModel<ClassesTeacherWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TeacherSideBar component.
  late TeacherSideBarModel teacherSideBarModel;
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
    teacherSideBarModel = createModel(context, () => TeacherSideBarModel());
  }

  @override
  void dispose() {
    teacherSideBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
