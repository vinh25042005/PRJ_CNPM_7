import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'right_answer_model.dart';
export 'right_answer_model.dart';

class RightAnswerWidget extends StatefulWidget {
  const RightAnswerWidget({super.key});

  @override
  State<RightAnswerWidget> createState() => _RightAnswerWidgetState();
}

class _RightAnswerWidgetState extends State<RightAnswerWidget> {
  late RightAnswerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RightAnswerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 86.0),
          child: Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset(
                  'assets/images/Frame_10138.png',
                ).image,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 215.0,
                    height: 41.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.0,
                          color: Color(0xFF77630D),
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                          spreadRadius: 0.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Next question',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
