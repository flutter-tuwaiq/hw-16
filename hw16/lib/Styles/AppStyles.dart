import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static Color text1Color = const Color.fromARGB(255, 83, 83, 83);
  static Color text2Color = const Color.fromARGB(255, 109, 109, 109);
  static Color redColor = const Color.fromARGB(255, 217, 81, 81);
  static Color orangeColor = const Color.fromARGB(255, 217, 150, 81);
  static Color navIconsColor = const Color.fromARGB(255, 139, 139, 139);
  static Color textFieldColor = const Color.fromARGB(127, 139, 139, 139);

// Main text styles
  static TextStyle textStyle = GoogleFonts.poppins(
      fontSize: 26, color: text1Color, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = GoogleFonts.poppins(
      fontSize: 24, color: text1Color, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = GoogleFonts.poppins(
      fontSize: 20, color: text1Color, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = GoogleFonts.poppins(
      fontSize: 16, color: text1Color, fontWeight: FontWeight.w600);
  static TextStyle headLineStyle4 = GoogleFonts.poppins(
      fontSize: 14, color: text1Color, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle5 = GoogleFonts.poppins(
      fontSize: 12, color: text2Color, fontWeight: FontWeight.w400);

// More text styles
  static TextStyle textFieldStyle = GoogleFonts.roboto(
      fontSize: 12, color: textFieldColor, fontWeight: FontWeight.w500);
  static TextStyle likesStyle = GoogleFonts.poppins(
      fontSize: 12, color: redColor, fontWeight: FontWeight.bold);
  static TextStyle userInfoStyle = GoogleFonts.poppins(
      fontSize: 12, color: text1Color, fontWeight: FontWeight.w600);
  static TextStyle profileNumbersStyle = GoogleFonts.poppins(
      fontSize: 16, color: orangeColor, fontWeight: FontWeight.w600);
}
