import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:forca_app/routes%20/home_route.dart';
import 'package:forca_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forca app',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(background: Colors.greenAccent)),
      home: AnimatedSplashScreen(
        splash: 'assets/images/forca.png',
        splashIconSize: 200,
        nextScreen: const ForcaHomePage(),
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
