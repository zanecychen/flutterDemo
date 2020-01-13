import 'package:draggable_practice/transform_rotate.dart';
import 'package:flutter/material.dart';
// import 'package:matrix4_transform/matrix4_transform.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/matrix4_transform

void main() async => runApp(MaterialApp(home: App()));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Transform'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TransformRotate(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
