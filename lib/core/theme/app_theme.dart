import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: Colors.brown[900],
    scaffoldBackgroundColor: const Color(0xFFFDFAF3),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.brown[900]),
    ),
  );
} 