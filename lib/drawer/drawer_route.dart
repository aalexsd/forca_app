import 'package:flutter/material.dart';
import 'package:forca_app/drawer/widgets/drawerbody_app.dart';
import 'package:forca_app/drawer/widgets/drawerbodycontent.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/forcaicon.png'),
              fit: BoxFit.cover),
            ),
            child: Container(),
          ),
          DrawerBodyApp(child: DrawerBodyContentApp(),),
        ],
      ),
    );
  }
}
