import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Base'),
      ),
      body: Center(
        child: Column(children: [
          MaterialButton(
            child: const Text('Listado de libros'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, 'listado');
            },
          ),
          MaterialButton(
            child: const Text('Contador'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, 'contador');
            },
          ),
          MaterialButton(
            child: const Text('List View'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, 'listview1');
            },
          ),
        ]),
      ),
    );
  }
}
