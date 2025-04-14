import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'do_task_widget.dart' show DoTaskWidget;
import 'package:flutter/material.dart';

class DoTaskModel extends FlutterFlowModel<DoTaskWidget> {
  ///  Local state fields for this page.

  int? currentIndex = 0;

  List<String> questionsList = [];
  void addToQuestionsList(String item) => questionsList.add(item);
  void removeFromQuestionsList(String item) => questionsList.remove(item);
  void removeAtIndexFromQuestionsList(int index) =>
      questionsList.removeAt(index);
  void insertAtIndexInQuestionsList(int index, String item) =>
      questionsList.insert(index, item);
  void updateQuestionsListAtIndex(int index, Function(String) updateFn) =>
      questionsList[index] = updateFn(questionsList[index]);

  int? countQues1;

  bool? nextButton = true;

  bool summitButton = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in DoTask widget.
  List<QuestionsRecord>? questions;
  // Stores action output result for [Firestore Query - Query a collection] action in DoTask widget.
  int? countQues;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
