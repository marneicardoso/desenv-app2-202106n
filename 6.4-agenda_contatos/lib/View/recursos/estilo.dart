import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.grey.shade300
    ),

    // Botão flutuante
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      hoverColor: Colors.orange.shade400
    )
  );
}
