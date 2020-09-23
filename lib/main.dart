import 'package:flutter/material.dart';
import 'package:uidesign01/goalspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        // color: Colors.red,
        child: GoalsPage(),
      ),
    );
  }
}
