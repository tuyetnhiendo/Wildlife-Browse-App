import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'information_requstlist_model.dart';
export 'information_requstlist_model.dart';

class InformationRequstlistWidget extends StatefulWidget {
  const InformationRequstlistWidget({super.key});

  @override
  State<InformationRequstlistWidget> createState() =>
      _InformationRequstlistWidgetState();
}

class _InformationRequstlistWidgetState
    extends State<InformationRequstlistWidget> {
  late InformationRequstlistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformationRequstlistModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 395.0,
      height: 355.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Text(
              'Request Card',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Open Sans',
                    color: const Color(0xFF72B656),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.1, 0.23),
            child: Container(
              width: 363.0,
              height: 306.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      2.0,
                    ),
                    spreadRadius: 5.0,
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(2.0),
                  bottomRight: Radius.circular(2.0),
                  topLeft: Radius.circular(2.0),
                  topRight: Radius.circular(2.0),
                ),
              ),
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Text(
                                '\nContact Information\n\nShelter: Green Valley Shelter\nEmail: contact@greenvalley.org\n\nDescription\n Volunteers are needed to collect eucalyptus branches for koala feeding. Please bring gloves and pruning shears.\n\nLocation: 123 Green Valley Road, Nearby Park.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.85, 0.52),
                            child: FlutterFlowPlacePicker(
                              iOSGoogleMapsApiKey:
                                  'AIzaSyATCGl0q4SCE2XWYdjQZL9DPJivFBi2RUo',
                              androidGoogleMapsApiKey:
                                  'AIzaSyATCGl0q4SCE2XWYdjQZL9DPJivFBi2RUo',
                              webGoogleMapsApiKey:
                                  'AIzaSyATCGl0q4SCE2XWYdjQZL9DPJivFBi2RUo',
                              onSelect: (place) async {
                                safeSetState(
                                    () => _model.placePickerValue = place);
                              },
                              defaultText: 'map',
                              icon: const Icon(
                                Icons.place,
                                color: Color(0xFFAE1037),
                                size: 25.0,
                              ),
                              buttonOptions: FFButtonOptions(
                                width: 25.0,
                                height: 25.0,
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.61, 0.86),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Accept',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.52, 0.86),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: 'Dismiss',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
