import '/flutter_flow/flutter_flow_util.dart';
import '/volunteers/avatar/avatar_widget.dart';
import 'mainprofile_widget.dart' show MainprofileWidget;
import 'package:flutter/material.dart';

class MainprofileModel extends FlutterFlowModel<MainprofileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for avatar component.
  late AvatarModel avatarModel;

  @override
  void initState(BuildContext context) {
    avatarModel = createModel(context, () => AvatarModel());
  }

  @override
  void dispose() {
    avatarModel.dispose();
  }
}
