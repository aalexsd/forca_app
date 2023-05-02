import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 1,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold),
          actionsIconTheme: IconThemeData(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: AnimatedSplashScreen(
        splash: 'assets/images/forca.png',
        splashIconSize: 200,
        nextScreen: const ForcaHomePage(),
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
