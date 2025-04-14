import '/flutter_flow/flutter_flow_util.dart';
import 'essay_questions_widget.dart' show EssayQuestionsWidget;
import 'package:flutter/material.dart';

class EssayQuestionsModel extends FlutterFlowModel<EssayQuestionsWidget> {
  ///  Local state fields for this page.

  List<String> userAnswer = [];
  void addToUserAnswer(String item) => userAnswer.add(item);
  void removeFromUserAnswer(String item) => userAnswer.remove(item);
  void removeAtIndexFromUserAnswer(int index) => userAnswer.removeAt(index);
  void insertAtIndexInUserAnswer(int index, String item) =>
      userAnswer.insert(index, item);
  void updateUserAnswerAtIndex(int index, Function(String) updateFn) =>
      userAnswer[index] = updateFn(userAnswer[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
