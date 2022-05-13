import 'package:flutter/material.dart';

import '../themes/default_theme.dart';

class ComponentImagen extends StatelessWidget {
  const ComponentImagen({
    Key? key,required this.imagen,required this.ancho,required this.alto,
  }) : super(key: key);
  final String imagen;
  final double ancho;
  final double alto;

  @override
  Widget build(BuildContext context) {
    return  FadeInImage(
        width: ancho,
        height: alto,
        placeholder:const AssetImage(imgLoading),
        image: NetworkImage(
            imagen));
  }
}
