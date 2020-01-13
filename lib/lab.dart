import 'package:flutter/material.dart';

class Lab extends StatefulWidget {
  @override
  Labs createState() => Labs();
}

class Labs extends State<Lab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(Lab oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () => print('onTap'),
//                      onScaleStart: (details) => print('onScaleStart'),
//                      onScaleEnd: (details) => print('onScaleEnd'),
//                      onScaleUpdate: (details) => print('onScaleUpdate'),
          onPanStart: (details) => print('onPanStart'),
          onPanEnd: (details) => print('onPanEnd'),
          onPanUpdate: (details) => print('onPanUpdate'),
          onPanCancel: () => print('onPanCancel'),
          onPanDown: (details) => print('onPanDown'),
          child: Container(
            child: Transform.translate(
              offset: Offset(100, 100),
              child: Transform.scale(
                scale: 2,
                child: Transform.rotate(
                  angle: 30,
                  child: FittedBox(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(3),
                          color: Colors.lightBlueAccent,
                          width: 100,
                          height: 100,
                          child: Container(
                            color: Colors.white,
                            child: Text('test'),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            color: Colors.black,
                            width: 10,
                            height: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
