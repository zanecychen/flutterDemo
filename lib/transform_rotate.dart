import 'dart:math';

import 'package:flutter/material.dart';

class TransformRotate extends StatefulWidget {
  const TransformRotate({Key key}) : super(key: key);

  @override
  _TransformRotateState createState() => _TransformRotateState();
}

class _TransformRotateState extends State<TransformRotate> {
  double size = 100;
  bool showBorder = false;
  double xPosition = 20.0;
  double yPosition = 20.0;

  bool isMoving = false;

  // GlobalKey objKey = GlobalKey();

  Offset containerOffset;

  double angle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapInfo) => print(tapInfo),
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }

  Widget createObject() {
    return Positioned(
      left: xPosition,
      top: yPosition,
      child: Transform.rotate(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(3),
              color: Colors.lightBlueAccent,
              width: 20 + size,
              height: 20 + size,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    xPosition += details.delta.dx;
                    yPosition += details.delta.dy;
                  });
                },
                child: Container(
                  color: Colors.white,
                  child: Text('test'),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                child: Container(
                  color: Colors.blue,
                  width: 20,
                  height: 20,
                ),
                onPanDown: (d) {
                  print(d);
                },
                onPanUpdate: (d) {
                  print(d);
                  setState(() {
                    size += d.delta.dx;
                  });
                },
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                child: Container(
                  color: Colors.black,
                  width: 20,
                  height: 20,
                ),
                onScaleUpdate: (ScaleUpdateDetails details) {
                  print(details);
                  setState(() {
                    angle = details.localFocalPoint.direction;
                  });
                },
                onScaleEnd: (detail) {
                  print(detail);
                },
              ),
            ),
          ],
        ),
        angle: angle,
      ),
    );
  }
}
