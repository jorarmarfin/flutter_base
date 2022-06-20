import 'package:flutter/material.dart';
import 'package:flutter_base/themes/default_theme.dart';

import 'providers/providers.dart';
import 'screens/screens.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DrupalProvider(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter base',
        theme: DefaultTheme.base,
        initialRoute: HomeScreen.routerName,
        routes: {
          HomeScreen.routerName: (context) => const HomeScreen(),
          ListadoScreen.routerName: (context) => const ListadoScreen(),
          ContadorScreen.routerName: (context) => const ContadorScreen(),
          ListView1Screen.routerName: (context) => const ListView1Screen(),
          Listview2Screen.routerName: (context) => const Listview2Screen(),
          AnimatedScreen.routerName: (context) => const AnimatedScreen(),
          InputsScreen.routerName: (context) => const InputsScreen(),
        });
  }
}
