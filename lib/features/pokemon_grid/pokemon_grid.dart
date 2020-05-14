import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://pokeapi.co
class PokemonGridPage extends StatelessWidget {
  int generation;
  int geracaoStart;
  int geracaoEnd;
  List<String> dataSource = [];

  PokemonGridPage(int this.generation) {
    switch (generation) {
      case 1:
        geracaoStart = 1;
        geracaoEnd = 151;
        break;
      case 2:
        geracaoStart = 152;
        geracaoEnd = 251;
        break;
      case 3:
        geracaoStart = 252;
        geracaoEnd = 386;
        break;
      case 4:
        geracaoStart = 387;
        geracaoEnd = 493;
        break;
      case 5:
        geracaoStart = 494;
        geracaoEnd = 649;
        break;
      case 6:
        geracaoStart = 650;
        geracaoEnd = 721;
        break;
      case 7:
        geracaoStart = 722;
        geracaoEnd = 809;
        break;
      default:
    }

    for (var i = geracaoStart; i <= geracaoEnd; i++) {
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
