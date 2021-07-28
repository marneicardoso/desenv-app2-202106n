import 'package:flutter/material.dart';
import 'package:layout/Layout.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Layout Flutter",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new Layout(),
    );
  }
}
