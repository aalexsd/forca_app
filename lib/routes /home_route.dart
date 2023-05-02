import 'dart:async';

import 'package:flutter/material.dart';
import 'package:forca_app/screens/home_page.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ForcaHomePage())
      );
    }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: const <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Vamos Jogar?',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ), ),
            ], ),
        ), );
  }
}
