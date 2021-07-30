import 'package:flutter/material.dart';
import 'package:stack/Validacao.dart';

void main() => runApp(ValidacaoApp());

class ValidacaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: Validacao()
      ),
    );
  }
}
