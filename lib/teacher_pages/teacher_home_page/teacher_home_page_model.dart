import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_pages/teacher_side_bar/teacher_side_bar_widget.dart';
import 'teacher_home_page_widget.dart' show TeacherHomePageWidget;
import 'package:flutter/material.dart';

class TeacherHomePageModel extends FlutterFlowModel<TeacherHomePageWidget> {
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
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    teacherSideBarModel = createModel(context, () => TeacherSideBarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    teacherSideBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
