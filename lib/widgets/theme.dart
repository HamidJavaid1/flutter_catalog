import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        primaryColor: Colors.black,
        highlightColor: Colors.black,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)
            .copyWith(secondary: Colors.pink, brightness: Brightness.light),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: Theme.of(context).textTheme,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        highlightColor: Colors.blue,
        canvasColor: darkCreamColor,
        primaryColor: Colors.white,
        indicatorColor: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.blue, brightness: Brightness.dark),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: Theme.of(context).textTheme,
      );

  // Color constants
  static Color creamColor = Color.fromARGB(255, 239, 236, 236);
  static Color darkCreamColor = Color.fromARGB(255, 60, 63, 66);
  static Color darkBluishColor = Color.fromARGB(255, 82, 95, 110);
  static Color lightbluishcolor = Color.fromARGB(255, 131, 164, 203);
}
