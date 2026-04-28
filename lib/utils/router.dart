import 'package:app_express/screens/app.dart';
import 'package:app_express/screens/login.dart';
import 'package:app_express/screens/parametre.dart';
import 'package:app_express/screens/profile.dart';
import 'package:app_express/screens/register.dart';
import 'package:flutter/material.dart';


abstract class MesRoutes {
  static const String initialroute = "/home";
  static final Map<String, WidgetBuilder> routes = {
    initialroute: (context) => MyApp(),
    "/login": (context) => LoginPage(),
    "/register": (context) => RegisterPage(),
    "/profile": (context) => ProfilePage(),
    "/parametre": (context) => ParametrePage(),
  };
}