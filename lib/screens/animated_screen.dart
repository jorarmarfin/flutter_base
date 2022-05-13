import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  static String routerName = 'animated';

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;

  void cambiarForma() {
    final rnd = Random();
    _width = rnd.nextInt(300).toDouble() + 70;
    _height = rnd.nextInt(300).toDouble() + 70;
    _color =
        Color.fromRGBO(rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cambiarForma();
        },
        child: const Icon(Icons.play_circle, size: 50),
      ),
      appBar: AppBar(
        title: const Text('animated controler'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticOut,
          width: _width,
          height: _height,
          color: _color,
        ),
      ),
    );
  }
}
