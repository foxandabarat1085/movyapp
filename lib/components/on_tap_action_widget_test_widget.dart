import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'on_tap_action_widget_test_model.dart';
export 'on_tap_action_widget_test_model.dart';

class OnTapActionWidgetTestWidget extends StatefulWidget {
  const OnTapActionWidgetTestWidget({
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
  _OnTapActionWidgetTestWidgetState createState() =>
      _OnTapActionWidgetTestWidgetState();
}

class _OnTapActionWidgetTestWidgetState
    extends State<OnTapActionWidgetTestWidget> {
  late OnTapActionWidgetTestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnTapActionWidgetTestModel());
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
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            setState(() {
              _model.isTapped1 = true;
              _model.imageOnTap = 'https://i.ibb.co/jHZvHhN/check.png';
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              valueOrDefault<String>(
                _model.imageOnTap,
                'https://i.ibb.co/FhRfTXf/BlueLogo.png',
              ),
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
