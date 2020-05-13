import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/features/landing_tab/landing_tab.dart';
import 'package:pokedex/features/onboarding/onboarding_page_child.dart';

class OnboardingPage extends StatelessWidget {
  final PageController controller = PageController();
  List<Widget> dataSource = [];

  OnboardingPage() {
    dataSource = [
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "Kanto Region",
              secondaryTitle: "Generation 1",
              imageName: "resources/images/generation1.jpeg",
              shouldPresentButton: true,
              buttonTitle: "Gotta Catch Them All",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, generation: 1);
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "Johto Region",
              secondaryTitle: "Generation 2",
              imageName: "resources/images/generation2.jpg",
              shouldPresentButton: true,
              buttonTitle: "Gotta Catch Them All",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, generation: 2);
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "Hoenn Region",
              secondaryTitle: "Generation 3",
              imageName: "resources/images/generation3.jpg",
              shouldPresentButton: true,
              buttonTitle: "Gotta Catch Them All",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, generation: 3);
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "Sinnoh Region",
              secondaryTitle: "Generation 4",
              imageName: "resources/images/generation4.jpg",
              shouldPresentButton: true,
              buttonTitle: "Gotta Catch Them All",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, generation: 4);
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "Unova Region",
              secondaryTitle: "Generation 5",
              imageName: "resources/images/generation5.jpg",
              shouldPresentButton: true,
              buttonTitle: "Gotta Catch Them All",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, generation: 5);
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "Kalos Region",
              secondaryTitle: "Generation 6",
              imageName: "resources/images/generation6.jpg",
              shouldPresentButton: true,
              buttonTitle: "Gotta Catch Them All",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, generation: 6);
              })),
      OnboardingPageChild(
          model: OnboardingPageChildModel(
              mainTitle: "Alola Region",
              secondaryTitle: "Generation 7",
              imageName: "resources/images/generation7.jpg",
              shouldPresentButton: true,
              buttonTitle: "Gotta Catch Them All",
              onButtonPressed: (context) {
                _presentPokemonListPage(context: context, generation: 7);
              })),
    ];
  }

  _presentPokemonListPage({BuildContext context, int generation}) {
    Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => LandingTabPage(generation)));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: PageView(
      key: Key("onboarding_page_view"),
      children: dataSource,
    ));
  }
}
