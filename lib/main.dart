import 'package:app_express/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:app_express/utils/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {'/': (context) => const MyHomePage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeDataPerso.modeleclair,
      darkTheme: ThemeDataPerso.modeledark,
      initialRoute: MesRoutes.initialroute,
      routes: MesRoutes.routes,
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => MyApp()),
    );
  }
}
