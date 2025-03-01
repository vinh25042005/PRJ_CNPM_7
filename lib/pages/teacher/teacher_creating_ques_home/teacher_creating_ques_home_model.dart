import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'teacher_creating_ques_home_widget.dart'
    show TeacherCreatingQuesHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class TeacherCreatingQuesHomeModel
    extends FlutterFlowModel<TeacherCreatingQuesHomeWidget> {
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
