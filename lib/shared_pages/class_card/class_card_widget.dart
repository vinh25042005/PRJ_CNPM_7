import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'class_card_model.dart';
export 'class_card_model.dart';

class ClassCardWidget extends StatefulWidget {
  const ClassCardWidget({
    super.key,
    this.className,
    this.owner,
    this.quantityAssignment,
  });

  final String? className;
  final String? owner;
  final String? quantityAssignment;

  @override
  State<ClassCardWidget> createState() => _ClassCardWidgetState();
}

class _ClassCardWidgetState extends State<ClassCardWidget> {
  late ClassCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClassCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).success,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 320.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SvgPicture.asset(
                'assets/images/2vqf7_',
                width: 419.7,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                ),
                child: Text(
                  'Class name:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                ),
                child: Text(
                  '',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                ),
                child: Text(
                  'Owner:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                ),
                child: Text(
                  'Teacher1',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                ),
                child: Text(
                  'Quantity:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).success,
                ),
                child: Text(
                  'XXX',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
