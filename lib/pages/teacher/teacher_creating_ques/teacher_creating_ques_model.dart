import '/flutter_flow/flutter_flow_util.dart';
import 'teacher_creating_ques_widget.dart' show TeacherCreatingQuesWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class TeacherCreatingQuesModel
    extends FlutterFlowModel<TeacherCreatingQuesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}
}
