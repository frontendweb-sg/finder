import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/config/theme/theme.dart';
import 'package:mobile/core/constants/contents.dart';
import 'package:mobile/features/home/presentation/pages/home.dart';
import 'package:mobile/features/splash/presenter/pages/splash.dart';

///
/// Entry point
void main() {
  // initialize global settings are here

  runApp(
    /// Provider scope
    const ProviderScope(
      /// App
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppContent.brandName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const SplashScreen(),
    );
  }
}
