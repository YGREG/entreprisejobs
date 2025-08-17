import 'package:flutter/material.dart';
import '../features/auth/screens/login_screen.dart';
import '../features/jobs/screens/job_list_screen.dart';
import '../features/jobs/screens/job_detail_screen.dart';
import '../features/contracts/screens/contract_list_screen.dart';
import '../features/contracts/screens/contract_detail_screen.dart';
import '../features/auth/screens/splash_screen.dart';  // À créer si pas déjà

import 'route_names.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => JobListScreen()); // Exemple d'écran home
      case RouteNames.jobList:
        return MaterialPageRoute(builder: (_) => JobListScreen());
      case RouteNames.jobDetail:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (_) => JobDetailScreen(/* passe args si nécessaire */));
      case RouteNames.contractList:
        return MaterialPageRoute(builder: (_) => ContractListScreen());
      case RouteNames.contractDetail:
        return MaterialPageRoute(builder: (_) => ContractDetailScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}