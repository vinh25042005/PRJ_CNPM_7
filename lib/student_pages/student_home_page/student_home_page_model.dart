import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_pages/student_side_bar/student_side_bar_widget.dart';
import 'student_home_page_widget.dart' show StudentHomePageWidget;
import 'package:flutter/material.dart';

class StudentHomePageModel extends FlutterFlowModel<StudentHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StudentSideBar component.
  late StudentSideBarModel studentSideBarModel;
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
    studentSideBarModel = createModel(context, () => StudentSideBarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    studentSideBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
