import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_notes_model.dart';
export 'empty_notes_model.dart';

class EmptyNotesWidget extends StatefulWidget {
  const EmptyNotesWidget({super.key});

  @override
  State<EmptyNotesWidget> createState() => _EmptyNotesWidgetState();
}

class _EmptyNotesWidgetState extends State<EmptyNotesWidget> {
  late EmptyNotesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyNotesModel());
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
            'assets/images/NotesIcon.png',
            width: 300.0,
            height: 152.0,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'No Notes Here!',
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
