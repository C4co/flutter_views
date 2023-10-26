import 'package:flutter/material.dart';

buyerProfileTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: Colors.red,
      fontFamily: 'SFProDisplay',
      listTileTheme: ListTileThemeData(
        iconColor: Colors.red.shade800,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
          letterSpacing: 8,
          fontWeight: FontWeight.w600,
        ),
        //actions white
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    );
