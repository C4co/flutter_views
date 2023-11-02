import 'package:flutter/material.dart';

buyerProfileTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: const Color.fromARGB(255, 24, 68, 242),
      fontFamily: 'SFProDisplay',
      scaffoldBackgroundColor: Colors.white,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        modalBackgroundColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 14,
          letterSpacing: 8,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
      ),
    );
