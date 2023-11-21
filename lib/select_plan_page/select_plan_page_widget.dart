import '/components/on_tap_action_widget_test_widget.dart';
import '/components/separator_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'select_plan_page_model.dart';
export 'select_plan_page_model.dart';

class SelectPlanPageWidget extends StatefulWidget {
  const SelectPlanPageWidget({super.key});

  @override
  _SelectPlanPageWidgetState createState() => _SelectPlanPageWidgetState();
}

class _SelectPlanPageWidgetState extends State<SelectPlanPageWidget> {
  late SelectPlanPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectPlanPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(-1.00, 0.00),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (isAndroid == true) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            isAndroid.toString(),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: const Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            isiOS.toString(),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: const Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Test',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 30.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.separatorWidgetModel,
                      updateCallback: () => setState(() {}),
                      child: const SeparatorWidgetWidget(),
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.onTapActionWidgetTestModel,
                  updateCallback: () => setState(() {}),
                  child: const OnTapActionWidgetTestWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
