import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MultiTouchGestureRecognizer extends MultiTapGestureRecognizer {
  final Function onPanDown;
  final Function onPanUpdate;
  final Function onPanEnd;

  MultiTouchGestureRecognizer({
    @required this.onPanDown,
    @required this.onPanUpdate,
    @required this.onPanEnd,
  });

  @override
  void addPointer(PointerEvent event) {
    super.addPointer(event);
    print(event);
  }
}
