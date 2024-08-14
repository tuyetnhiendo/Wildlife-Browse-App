import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'createrequest_widget.dart' show CreaterequestWidget;
import 'package:flutter/material.dart';

class CreaterequestModel extends FlutterFlowModel<CreaterequestWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Sheltername widget.
  FocusNode? shelternameFocusNode;
  TextEditingController? shelternameTextController;
  String? Function(BuildContext, String?)? shelternameTextControllerValidator;
  String? _shelternameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for floraDropDown widget.
  List<String>? floraDropDownValue;
  FormFieldController<List<String>>? floraDropDownValueController;
  // State field(s) for Quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  String? _dateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for Time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  String? _timeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 5) {
      return 'Maximum 5 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {
    shelternameTextControllerValidator = _shelternameTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
    dateTextControllerValidator = _dateTextControllerValidator;
    timeTextControllerValidator = _timeTextControllerValidator;
  }

  @override
  void dispose() {
    shelternameFocusNode?.dispose();
    shelternameTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    dateFocusNode?.dispose();
    dateTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();
  }
}
