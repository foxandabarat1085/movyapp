import '/components/on_tap_action_widget_test_widget.dart';
import '/components/separator_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_plan_page_widget.dart' show SelectPlanPageWidget;
import 'package:flutter/material.dart';

class SelectPlanPageModel extends FlutterFlowModel<SelectPlanPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SeparatorWidget component.
  late SeparatorWidgetModel separatorWidgetModel;
  // Model for OnTapActionWidgetTest component.
  late OnTapActionWidgetTestModel onTapActionWidgetTestModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    separatorWidgetModel = createModel(context, () => SeparatorWidgetModel());
    onTapActionWidgetTestModel =
        createModel(context, () => OnTapActionWidgetTestModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    separatorWidgetModel.dispose();
    onTapActionWidgetTestModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
