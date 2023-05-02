import 'package:flutter/material.dart';

class DrawerBodyApp extends StatelessWidget {
  final Widget child;
  const DrawerBodyApp({Key? key,
  required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      child: child,
    ));
  }
}
