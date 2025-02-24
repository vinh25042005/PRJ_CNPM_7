import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'scratchpad_widget.dart' show ScratchpadWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class ScratchpadModel extends FlutterFlowModel<ScratchpadWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Signature widget.
  SignatureController? signatureController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signatureController?.dispose();
  }
}
