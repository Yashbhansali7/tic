import 'package:flutter/material.dart';
import 'package:socialchutney/screens/contact_us.dart';
import 'package:socialchutney/screens/memory_lane.dart';
import '../screens/home.dart';
import '../screens/register.dart';
import '../screens/team.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ContactUsScreen.routeName:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const ContactUsScreen());
      case MemoryLaneScreen.routeName:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const MemoryLaneScreen());
      case TeamScreen.routeName:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const TeamScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const HomeScreen());
      case RegisterScreen.routeName:
        return MaterialPageRoute(
            settings: settings, builder: (context) => const RegisterScreen());

      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text('ERROR')),
          body: const Center(
            child: Text("Page not found"),
          ),
        );
      },
    );
  }
}
