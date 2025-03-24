import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'creating_ques_home_copy_widget.dart' show CreatingQuesHomeCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class CreatingQuesHomeCopyModel
    extends FlutterFlowModel<CreatingQuesHomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // State field(s) for ques widget.
  FocusNode? quesFocusNode;
  TextEditingController? quesTextController;
  String? Function(BuildContext, String?)? quesTextControllerValidator;
  // State field(s) for ans1 widget.
  FocusNode? ans1FocusNode;
  TextEditingController? ans1TextController;
  String? Function(BuildContext, String?)? ans1TextControllerValidator;
  // State field(s) for ans2 widget.
  FocusNode? ans2FocusNode;
  TextEditingController? ans2TextController;
  String? Function(BuildContext, String?)? ans2TextControllerValidator;
  // State field(s) for ans3 widget.
  FocusNode? ans3FocusNode;
  TextEditingController? ans3TextController;
  String? Function(BuildContext, String?)? ans3TextControllerValidator;
  // State field(s) for ans4 widget.
  FocusNode? ans4FocusNode;
  TextEditingController? ans4TextController;
  String? Function(BuildContext, String?)? ans4TextControllerValidator;
  // State field(s) for correctAns widget.
  FocusNode? correctAnsFocusNode;
  TextEditingController? correctAnsTextController;
  String? Function(BuildContext, String?)? correctAnsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {
    quesFocusNode?.dispose();
    quesTextController?.dispose();

    ans1FocusNode?.dispose();
    ans1TextController?.dispose();

    ans2FocusNode?.dispose();
    ans2TextController?.dispose();

    ans3FocusNode?.dispose();
    ans3TextController?.dispose();

    ans4FocusNode?.dispose();
    ans4TextController?.dispose();

    correctAnsFocusNode?.dispose();
    correctAnsTextController?.dispose();
  }
}
