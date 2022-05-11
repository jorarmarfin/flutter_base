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
      appBarTheme: const AppBarTheme(backgroundColor: colorPrimaryColor),
      textTheme: TextTheme(
          headline1: GoogleFonts.akayaTelivigala(
              fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),
          bodyText2: const TextStyle(color: Colors.black)
//headline2-6,subtitle1-2,bodyText1-2,caption
          ));
}

BoxDecoration fondoScreen(String fondo) {
  return BoxDecoration(
    image: DecorationImage(image: AssetImage(fondo), fit: BoxFit.fill),
  );
}

BoxDecoration containerEstiloBoton(color) {
  return BoxDecoration(
    color: color,
    border: Border.all(color: Colors.white, width: 2.5),
    borderRadius: BorderRadius.circular(20),
  );
}

BoxDecoration containerEstiloRecuadro(color, radio) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radio),
  );
}
