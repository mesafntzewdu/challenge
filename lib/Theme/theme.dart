import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(100, 169, 169, 169),
      brightness: Brightness.dark),
  textTheme: TextTheme(
    //Title text Style
    titleSmall: TextStyle(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        color: Colors.white70,
        fontSize: 14),
    titleMedium: TextStyle(
      fontFamily: GoogleFonts.ubuntu().fontFamily,
      color: Colors.white70,
      fontSize: 18,
    ),
    titleLarge: TextStyle(
      fontFamily: GoogleFonts.ubuntu().fontFamily,
      color: Colors.white70,
      fontSize: 22,
    ),
    //Body text Style
    bodySmall: TextStyle(
      fontFamily: GoogleFonts.ubuntu().fontFamily,
      color: Colors.white70,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.ubuntu().fontFamily,
      color: Colors.white70,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.ubuntu().fontFamily,
      color: Colors.white70,
      fontSize: 24,
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(100, 240, 240, 240),
      brightness: Brightness.light),
  textTheme: TextTheme(
    //Title text Style
    titleSmall: TextStyle(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        color: Colors.black87,
        fontSize: 14),
    titleMedium: TextStyle(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        color: Colors.black87,
        fontSize: 18),
    titleLarge: TextStyle(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        color: Colors.black87,
        fontSize: 22),
    //Body text Style
    bodySmall: TextStyle(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        color: Colors.black87,
        fontSize: 16),
    bodyMedium: TextStyle(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        color: Colors.black87,
        fontSize: 20),
    bodyLarge: TextStyle(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        color: Colors.black87,
        fontSize: 24),
  ),
);
