import 'package:flutter/material.dart';

import '../components/components.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(children: [
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
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          elevation: 5,
                          title: const Text('Titulo'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text('Texto Velit exercitirure in incididunt.'),
                              SizedBox(
                                height: 100,
                              ),
                              FlutterLogo(
                                size: 100,
                              )
                            ],
                          ),
                        );
                      });
                },
                child: const Text('Mostrar alerta ')),
            const Card(
              child: SizedBox(
                  height: 100,
                  width: 200,
                  child: Center(child: Text('My Card'))),
            ),
            const CoImagen(
              alto: 230,
              ancho: double.infinity,
              imagen:
                  'https://images.unsplash.com/photo-1434725039720-aaad6dd32dfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1342&q=80',
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
