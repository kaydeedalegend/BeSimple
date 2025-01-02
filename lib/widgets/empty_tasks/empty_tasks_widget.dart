import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_tasks_model.dart';
export 'empty_tasks_model.dart';

class EmptyTasksWidget extends StatefulWidget {
  const EmptyTasksWidget({super.key});

  @override
  State<EmptyTasksWidget> createState() => _EmptyTasksWidgetState();
}

class _EmptyTasksWidgetState extends State<EmptyTasksWidget> {
  late EmptyTasksModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyTasksModel());
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/SimpleDoICon.png',
            width: 300.0,
            height: 152.0,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'No Tasks Here!',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
