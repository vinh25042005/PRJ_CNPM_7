import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_pages/student_side_bar/student_side_bar_widget.dart';
import '/index.dart';
import 'task_list_page_widget.dart' show TaskListPageWidget;
import 'package:flutter/material.dart';

class TaskListPageModel extends FlutterFlowModel<TaskListPageWidget> {
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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

    tabBarController?.dispose();
  }
}
