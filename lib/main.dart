import 'package:flutter/material.dart';
import 'package:flutter_application_using_url_launcher_intent_plus_andriod_connectivity_plus/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'first_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// UrlLauncher urlLauncher = UrlLauncher();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreenState(),
    );
  }
}
