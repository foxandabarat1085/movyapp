import '/components/separator_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'select_plan_page_widget.dart' show SelectPlanPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectPlanPageModel extends FlutterFlowModel<SelectPlanPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SeparatorWidget component.
  late SeparatorWidgetModel separatorWidgetModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    separatorWidgetModel = createModel(context, () => SeparatorWidgetModel());
  }

  void dispose() {
    unfocusNode.dispose();
    separatorWidgetModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
