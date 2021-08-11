import 'package:flutter/material.dart';
import 'package:tudo_saboroso/TudoSaboroso.dart';

void main() => runApp(
  new MaterialApp(
    title: "App Tudo Saboroso",
    home: TudoSaboroso(),
    debugShowCheckedModeBanner: false
    // Retira o DEBUG da AppBar
  )
);
