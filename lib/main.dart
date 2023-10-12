import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.ligthTheme,
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //home: const CardScreen(),
        initialRoute: AppRoutes.initialRoute,
        //rutas en la app
        routes: AppRoutes.getAppRoutes(),
        //cuando no exista la ruta
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
