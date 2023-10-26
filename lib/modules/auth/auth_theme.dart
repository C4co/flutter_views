import 'package:flutter/material.dart';

authTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: Colors.indigo,
      fontFamily: 'SFProDisplay',
      //input border color
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
      ),
    );
