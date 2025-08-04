
import 'package:flutter/material.dart';
import 'package:spectromobi_app/core/config.dart';
import 'package:spectromobi_app/core/logger.dart';
import 'package:spectromobi_app/core/theme.dart';

import 'package:spectromobi_app/routes/router.dart';

MyApp getMyApp() => const MyApp();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    AppLogger.initialize();
    AppLogger.debug("Logger Initiated");

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,

      title: AppSettings.appName,
      theme: myAppTheme,
    );
  }
}

