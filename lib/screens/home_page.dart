import 'package:flutter/material.dart';
import 'package:forca_app/drawer/drawer_route.dart';


class ForcaHomePage extends StatelessWidget {
  const ForcaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Jogo da Forca'),
      ),
      body: Container(),
      drawer: const DrawerPage(),
      );
  }
}
