import 'dart:async';

import 'package:flutter/material.dart';
import 'package:forca_app/routes%20/welcome_route.dart';
import 'package:forca_app/widgets/circular_image_widget.dart';

class SplashScreenRoute extends StatefulWidget {
  const SplashScreenRoute({Key? key}) : super(key: key);

  @override
  State<SplashScreenRoute> createState() => _SplashScreenRouteState();
}

class _SplashScreenRouteState extends State<SplashScreenRoute> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => const WelcomeRoutee())
      );
    }
    );
  }



  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Jogo da Forca',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: CircularImageWidget(
                imageProvider: AssetImage('assets/images/forca.png')),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20),
            child: Text(
              'Carregando...',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0,
            left: 50),
            child: LinearProgressIndicator(
              backgroundColor: Colors.blue[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[900]!),
            ),
          ),
        ],
      ),
    );
  }
}
