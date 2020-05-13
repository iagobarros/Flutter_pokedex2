import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseService {
  String baseURL = "https://pokeapi.co/api/v2";

  String formURL(String endpoint) {
    return "$baseURL$endpoint";
  }
}

abstract class PokemonService {
  Future<dynamic> fetchAllKantoPokemon();
  Future<http.Response> fetchPokemonWithName({String name});
  String imageNameForID({String id});
}

class PokemonServiceImpl extends BaseService implements PokemonService {
  int generation;
  PokemonServiceImpl(int this.generation);

  @override
  Future<dynamic> fetchAllKantoPokemon() async {
    return Future<dynamic>(() async {
      var json;
      int geracaoStart;
      int geracaoEnd;
      int limit;

      switch (generation) {
        case 1:
          geracaoStart = 0;
          geracaoEnd = 151;
          break;
        case 2:
          geracaoStart = 151;
          geracaoEnd = 251;
          break;
        case 3:
          geracaoStart = 251;
          geracaoEnd = 386;
          break;
        case 4:
          geracaoStart = 386;
          geracaoEnd = 493;
          break;
        case 5:
          geracaoStart = 493;
          geracaoEnd = 649;
          break;
        case 6:
          geracaoStart = 649;
          geracaoEnd = 721;
          break;
        case 7:
          geracaoStart = 721;
          geracaoEnd = 809;
          break;
        default:
      }

      limit = geracaoEnd - geracaoStart;
      limit.toString();
      geracaoStart.toString();

      await http
          .get(formURL("/pokemon?offset=$geracaoStart&limit=$limit"))
          .then((response) {
        json = jsonDecode(response.body);
      }).catchError((error) {
        throw error;
      });

      return json;
    });
  }

  @override
  String imageNameForID({String id}) {
    return "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png";
  }

  @override
  Future<http.Response> fetchPokemonWithName({String name}) {
    return http.get(formURL("/pokemon/$name/"));
  }
}
