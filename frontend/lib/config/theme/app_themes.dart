import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
      appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      titleTextStyle:
          TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),
      centerTitle: true);
}
