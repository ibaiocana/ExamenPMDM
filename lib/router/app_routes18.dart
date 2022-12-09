import 'package:examenpmdm18/screens/home_screen18.dart';
import 'package:examenpmdm18/screens/sigin_screen18.dart';
import 'package:flutter/material.dart';
import 'package:examenpmdm18/screens/screens18.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'sigin': (BuildContext context) => const SigInScreen(),
    'listview': (BuildContext context) => const ListViewScreen(),
    'Pistas': (BuildContext context) => const PistasScreen(),
    'Monitores': (BuildContext context) => const MonitoresScreen(),
    'Reservas': (BuildContext context) => const ReservasScreen(),
  };
}
