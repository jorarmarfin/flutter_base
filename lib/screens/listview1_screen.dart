import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  static String routerName = 'listview1';
  final opciones = const ['item 1', 'item 2', ' item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Listview 1')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                    opciones[index],
                    style: const TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () => {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: opciones.length));
  }
}
