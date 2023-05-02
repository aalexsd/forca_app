import 'package:flutter/material.dart';

class ListTileAppWidget extends StatelessWidget {
  final EdgeInsets contentPadding;
  final String titleText;
  final String subtitleText;
  const ListTileAppWidget({super.key,
    this.contentPadding =
    const EdgeInsets.only(left: 54.0, top: 0.0, bottom: 8.0),
    required this.titleText,
    required this.subtitleText,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(titleText),
                Text(
                  subtitleText,
                  style: const TextStyle(
                    fontSize: 10.0,
                  ), ),
              ], ),
          ),
        ], ),
    );
  }
}
