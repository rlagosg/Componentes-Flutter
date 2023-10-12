import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 82, 82, 82);
  //tema claro
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primary,
      //appBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      //textbotton theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      //elevate botton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 0)),
      //inputs
      inputDecorationTheme: const InputDecorationTheme(
          //color del borde
          floatingLabelStyle: TextStyle(color: primary),
          //borde cuando esta habilitado
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          //borde cuando esta deshabilitado
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));
  //tema oscuro
  static final ThemeData darckTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: Colors.indigo,
      //appBar Theme
      appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 172, 74, 67), elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
