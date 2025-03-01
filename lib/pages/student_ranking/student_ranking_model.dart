import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'student_ranking_widget.dart' show StudentRankingWidget;
import 'package:flutter/material.dart';

class StudentRankingModel extends FlutterFlowModel<StudentRankingWidget> {
  ///  Local state fields for this page.

  List<StudentsRecord> student = [];
  void addToStudent(StudentsRecord item) => student.add(item);
  void removeFromStudent(StudentsRecord item) => student.remove(item);
  void removeAtIndexFromStudent(int index) => student.removeAt(index);
  void insertAtIndexInStudent(int index, StudentsRecord item) =>
      student.insert(index, item);
  void updateStudentAtIndex(int index, Function(StudentsRecord) updateFn) =>
      student[index] = updateFn(student[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in StudentRanking widget.
  List<StudentsRecord>? studentList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<StudentsRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
