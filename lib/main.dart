import 'package:flutter/material.dart';
import 'package:flutter_base/themes/default_theme.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: DefaultTheme.base,
        initialRoute: HomeScreen.routerName,
        routes: {
          HomeScreen.routerName: (context) => const HomeScreen(),
        });
  }
}
