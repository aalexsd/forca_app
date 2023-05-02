
import 'package:flutter/material.dart';
import 'package:forca_app/routes%20/splash_screen_route.dart';

class ForcaHomePage extends StatelessWidget {
  const ForcaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Jogo da Forca'),
      ),
      body: Container(),
      );
  }
}
