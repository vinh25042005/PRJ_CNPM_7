import '/flutter_flow/flutter_flow_util.dart';
import '/shared_pages/student_side_bar/student_side_bar_widget.dart';
import '/index.dart';
import 'info_task_widget.dart' show InfoTaskWidget;
import 'package:flutter/material.dart';

class InfoTaskModel extends FlutterFlowModel<InfoTaskWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StudentSideBar component.
  late StudentSideBarModel studentSideBarModel;

  @override
  void initState(BuildContext context) {
    studentSideBarModel = createModel(context, () => StudentSideBarModel());
  }

  @override
  void dispose() {
    studentSideBarModel.dispose();
  }
}
