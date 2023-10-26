import 'package:flutter/material.dart';

dashboard01theme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: Colors.yellow,
      fontFamily: 'SFProDisplay',
      chipTheme: const ChipThemeData(
        shape: StadiumBorder(),
        side: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
        labelStyle: TextStyle(
          fontSize: 12,
        ),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
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
