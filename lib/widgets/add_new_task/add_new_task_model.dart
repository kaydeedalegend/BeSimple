import '/flutter_flow/flutter_flow_util.dart';
import 'add_new_task_widget.dart' show AddNewTaskWidget;
import 'package:flutter/material.dart';

class AddNewTaskModel extends FlutterFlowModel<AddNewTaskWidget> {
  ///  State fields for stateful widgets in this component.

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
