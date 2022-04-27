import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';

class ListadoScreen extends StatelessWidget {
  const ListadoScreen({Key? key}) : super(key: key);
  static String routerName = 'listado';
  

  @override
  Widget build(BuildContext context) {
    final drupal = Provider.of<DrupalProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado'),
      ),
      body: Center(
        child: Column(children: [
          MaterialButton(
            child: const Text('get Libros'),
            color: Colors.orange,
            onPressed: () {
              drupal.getLibros();
            },
          )
        ]),
      ),
    );
  }
}
