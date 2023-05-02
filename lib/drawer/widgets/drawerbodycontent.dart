import 'package:flutter/material.dart';

class DrawerBodyContentApp extends StatelessWidget {
  const DrawerBodyContentApp({Key? key}) : super(key: key);

  ListTile _createListTile({
    required EdgeInsets contentPadding,
    required String titleText,
    required String subtitleText,
  }) {
    return ListTile(
      contentPadding: contentPadding,
      trailing: const Icon(Icons.arrow_forward),
      title: Text(titleText),
      subtitle: Text(subtitleText),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTileTheme(
          contentPadding: const EdgeInsets.only(left: 6),
          child: ExpansionTile(
            title: const Text(
              'Base de Palavras',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            onExpansionChanged: null,
            children: <Widget>[
              _createListTile(
                  contentPadding: const EdgeInsets.only(left: 62.0),
                  titleText: 'Novas Palavras',
                  subtitleText: 'Vamos inserir palavras?'),
              _createListTile(
                  contentPadding: const EdgeInsets.only(left: 62.0),
                  titleText: 'Palavras existentes',
                  subtitleText: 'Vamos ver o que já temos?'),
            ],
          ),
        ),
        _createListTile(
          contentPadding: const EdgeInsets.only(left: 6.0),
          titleText: 'Jogar',
          subtitleText: 'Começar a diversão',
        ),
        _createListTile(
          contentPadding: const EdgeInsets.only(left: 6.0),
          titleText: 'Score',
          subtitleText: 'Relação dos top 10',
        ),
      ],
    );
  }
}
