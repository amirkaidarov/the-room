import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: Style.AccentOliveGreen,
    iconTheme: const IconThemeData(color: Style.LightGrey),
    scaffoldBackgroundColor: Style.LightOliveGreen,
    colorScheme: const ColorScheme.light(
      primary: Style.AccentOliveGreen,
      secondary: Style.LightGrey,
      tertiary: Style.LightWhite,
      error: Style.AccentRed,
    ),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(fontFamily: 'Montserrat'),
    appBarTheme: const AppBarTheme(
      color: Style.LightOliveGreen,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        textStyle: const TextStyle(
          fontSize: 15,
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      // contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      errorStyle: TextStyle(color: Style.AccentBlack),
      labelStyle: TextStyle(color: Style.AccentBlack),

      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Style.AccentGrey,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Style.AccentOliveGreen,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        
      ),
    ),
    //   floatingActionButtonTheme: FloatingActionButtonThemeData(
    //     backgroundColor: Colors.blue[900],
    //   ),
  );
}
