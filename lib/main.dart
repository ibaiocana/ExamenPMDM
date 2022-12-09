import 'package:examenpmdm18/screens/screens18.dart';
import 'package:flutter/material.dart';
import 'package:examenpmdm18/router/app_routes18.dart';
import 'package:examenpmdm18/theme/app_theme18.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
    );
  }
}
