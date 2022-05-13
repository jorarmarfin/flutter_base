import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

//Colores
const colorPrincipal = Colors.purple;
const colorSecundario = Color(0xffFF9A3B);

//Imagenes
const imgLoading = 'assets/images/loading.gif';

//Iconos
const icoNosotros = 'assets/icons/about.png';

class DefaultTheme {
  static ThemeData base = ThemeData.light().copyWith(
      primaryColor: colorPrincipal,
      appBarTheme: const AppBarTheme(color: colorPrincipal),
      //       textTheme: TextTheme(
      //           headline1: GoogleFonts.akayaTelivigala(
      //               fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),
      //           bodyText2: const TextStyle(color: Colors.black)
      // //headline2-6,subtitle1-2,bodyText1-2,caption
      //           )
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: colorPrincipal),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: colorPrincipal,
        shape: const StadiumBorder(),
      )),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: colorPrincipal),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorPrincipal),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorPrincipal),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: colorPrincipal),
              borderRadius: BorderRadius.all(Radius.circular(10)))));
}

// final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
//   primary: colorPrincipal,
//   minimumSize: const Size(88, 36),
//   padding: const EdgeInsets.symmetric(horizontal: 16),
//   shape: const StadiumBorder(),
// );

BoxDecoration bXDfondoScreen(String fondo) {
  return BoxDecoration(
    image: DecorationImage(image: AssetImage(fondo), fit: BoxFit.fill),
  );
}

BoxDecoration bXDEstiloBoton(color) {
  return BoxDecoration(
    color: color,
    border: Border.all(color: Colors.white, width: 2.5),
    borderRadius: BorderRadius.circular(20),
  );
}

BoxDecoration bXDEstiloRecuadro(color, radio) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radio),
  );
}
