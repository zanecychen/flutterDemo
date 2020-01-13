import 'package:draggable_practice/multitouch_gesture.dart';
import 'package:flutter/material.dart';

class MultitouchPage extends StatefulWidget {
  MultitouchPage({Key key}) : super(key: key);

  @override
  _MultitouchPageState createState() => _MultitouchPageState();
}

class _MultitouchPageState extends State<MultitouchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: RawGestureDetector(
          gestures: <Type, GestureRecognizerFactory>{
            MultiTouchGestureRecognizer: GestureRecognizerFactoryWithHandlers<
                MultiTouchGestureRecognizer>(
              () => MultiTouchGestureRecognizer(
                onPanDown: _onPanDown,
                onPanEnd: null,
                onPanUpdate: null,
              ),
              (MultiTouchGestureRecognizer instance) {},
            ),
          },
          child: Icon(
            Icons.accessibility,
          ),
        ),
      ),
    );
  }

  _onPanDown() {}
}
