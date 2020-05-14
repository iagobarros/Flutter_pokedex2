import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon_list/pokemon_list.dart';
import 'package:pokedex/features/pokemon_list/pokemon_list_view_model.dart';
import 'package:pokedex/services/pokemon_service.dart';

abstract class BaseCoordinator {
  Widget widget();
}

class PokemonListCoordinator implements BaseCoordinator {
  int generation;
  PokemonListCoordinator(int this.generation);

  Widget widget() {
    var viewModel =
        PokemonListViewModel(service: PokemonServiceImpl(generation));
    return PokemonListPage(viewModel: viewModel);
  }
}
