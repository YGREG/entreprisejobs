import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routing/app_router.dart';
import 'config/app_theme.dart';
import 'routing/route_names.dart';
import 'features/auth/controller.dart';                 // example
import 'features/jobs/controller/job_controller.dart';  // example

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthController()),
        ChangeNotifierProvider(create: (_) => JobController()),
        // Ajouter d'autres providers ici
      ],
      child: MyApp(),
    ),
  );
}