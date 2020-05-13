import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://pokeapi.co
class PokemonGridPage extends StatelessWidget {
  List<String> dataSource = [];

  PokemonGridPage() {
    for (var i = 1; i < 152; i++) {
      dataSource.add(
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$i.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "POKÉDEX",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        child: Container(
          color: Colors.blueGrey.withOpacity(0.8),
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            padding: EdgeInsets.all(8),
            children: dataSource.map((value) {
              return Image.network(value);
            }).toList(),
          ),
        ));
  }
}
