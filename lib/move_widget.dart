import 'package:flutter/material.dart';

class MoveWidget extends StatefulWidget {
  const MoveWidget({Key key}) : super(key: key);

  @override
  _MoveWidgetState createState() => _MoveWidgetState();
}

class _MoveWidgetState extends State<MoveWidget> {
  double xPosition = 0;
  double yPosition = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: yPosition,
              left: xPosition,
              child: GestureDetector(
                onPanUpdate: (tapInfo) {
                  setState(() {
                    xPosition += tapInfo.delta.dx;
                    yPosition += tapInfo.delta.dy;
                  });
                },
                child: Icon(Icons.ac_unit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
