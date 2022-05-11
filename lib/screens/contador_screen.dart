import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  static String routerName = 'contador';

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 10;
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Numero de clics',
              style: fontSize30,
            ),
            Text(
              '$contador',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'btnSuma',
            onPressed: () {
              setState(() {
                contador++;
              });
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'btnResetear',
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
            child: const Icon(Icons.home),
          ),
          FloatingActionButton(
            heroTag: 'btnResta',
            onPressed: () {
              setState(() {
                contador--;
              });
            },
            child: const Icon(Icons.remove_sharp),
          ),
        ],
      ),
    );
  }
}
