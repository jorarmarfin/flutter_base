import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colores
const colorPrimaryColor = Colors.purple;
const colorNaranja = Color(0xffFF9A3B);

//Imagenes
const imgLoading = 'assets/images/loading.gif';

//Iconos
const icoNosotros = 'assets/icons/about.png';

class DefaultTheme {
  static ThemeData base = ThemeData.light().copyWith(
      primaryColor: colorPrimaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: colorPrimaryColor,
        foregroundColor: Colors.white,
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.akayaTelivigala()
//           headline1: GoogleFonts.akayaTelivigala(
//               fontSize: 60, color: colorTextColor, fontWeight: FontWeight.bold)
// //headline2-6,subtitle1-2,bodyText1-2,caption
          )
          );
}
