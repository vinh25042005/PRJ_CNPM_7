import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_pages/teacher_side_bar/teacher_side_bar_widget.dart';
import '/index.dart';
import 'manage_class_widget.dart' show ManageClassWidget;
import 'package:flutter/material.dart';

class ManageClassModel extends FlutterFlowModel<ManageClassWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TeacherSideBar component.
  late TeacherSideBarModel teacherSideBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {
    teacherSideBarModel = createModel(context, () => TeacherSideBarModel());
  }

  @override
  void dispose() {
    teacherSideBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
  }
}
