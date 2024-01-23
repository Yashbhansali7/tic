import 'package:flutter/material.dart';
import 'package:socialchutney/screens/home.dart';

import 'helpers/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'JosefinSans', useMaterial3: true),
      home: const HomeScreen(),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
