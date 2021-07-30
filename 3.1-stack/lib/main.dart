import 'package:flutter/material.dart';
import 'package:stack/Stack.dart';

void main() => runApp(StackApp());

class StackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: StackPilha()
      ),
    );
  }
}
