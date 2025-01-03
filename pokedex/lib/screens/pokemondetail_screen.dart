import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/styles/S.dart';

class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonDetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${pokemon.name} #${pokemon.id}" ?? "Bulbasaur"),
        backgroundColor: S.colors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: S.colors.primary,
      body: Center(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                margin: const EdgeInsets.only(top: 60, bottom: 20),
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width - 28,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 40),
                    Text(pokemon.name ?? "Bulbasaur",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 40,
                    ),
                    Text("Height: ${pokemon.height}"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Weight: ${pokemon.weight}"),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text("Types:"),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (String t in pokemon.type as List<String>)
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color:
                                          S.colors.pokemonType[t.toLowerCase()],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(t,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white))))
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text("Weaknesses:"),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      runSpacing: 8,
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        for (String t in pokemon.weaknesses as List<String>)
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color:
                                          S.colors.pokemonType[t.toLowerCase()],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(t,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white))))
                      ],
                    )
                  ],
                )),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: pokemon.id ?? "0",
                  child: Image(
                      height: 130,
                      width: 130,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        pokemon.img ??
                            "https://carlo.vercel.app/imgs/carlo_about.jpg",
                      )))),
        ],
      )),
    );
  }
}

// Container(
//                   height: 200,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       color: Colors.blue,
//                       image: DecorationImage(
//                         image: NetworkImage(pokemon.img ??
//                             "https://carlo.vercel.app/imgs/carlo_about.jpg"),
//                       )))
