import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
const HomeScreen({Key? key}) : super(key: key);

static String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}