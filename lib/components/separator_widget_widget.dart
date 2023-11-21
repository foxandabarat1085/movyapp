import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'separator_widget_model.dart';
export 'separator_widget_model.dart';

class SeparatorWidgetWidget extends StatefulWidget {
  const SeparatorWidgetWidget({
    super.key,
    String? imagePath1,
    String? imagePath2,
    String? imagePath3,
  })  : imagePath1 = imagePath1 ?? 'https://i.ibb.co/jHZvHhN/check.png',
        imagePath2 = imagePath2 ?? 'https://i.ibb.co/jHZvHhN/check.png',
        imagePath3 = imagePath3 ?? 'https://i.ibb.co/jHZvHhN/check.png';

  final String imagePath1;
  final String imagePath2;
  final String imagePath3;

  @override
  _SeparatorWidgetWidgetState createState() => _SeparatorWidgetWidgetState();
}

class _SeparatorWidgetWidgetState extends State<SeparatorWidgetWidget> {
  late SeparatorWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeparatorWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            widget.imagePath1,
            width: 30.0,
            height: 30.0,
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            widget.imagePath2,
            width: 30.0,
            height: 30.0,
            fit: BoxFit.cover,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            widget.imagePath3,
            width: 30.0,
            height: 30.0,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
