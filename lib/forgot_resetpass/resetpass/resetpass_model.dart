import '/flutter_flow/flutter_flow_util.dart';
import 'resetpass_widget.dart' show ResetpassWidget;
import 'package:flutter/material.dart';

class ResetpassModel extends FlutterFlowModel<ResetpassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
