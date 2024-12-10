import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/screens/pokemondetail_screen.dart';
import 'package:pokedex/styles/S.dart';

// API Calling
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  PokeHub? pokeHub;
  bool isFetchingData = true;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    setState(() {
      isFetchingData = true;
    });
    print("Fetching data...");
    var res = await http.get(Uri.parse(url));
    var json = jsonDecode(res.body);

    setState(() {
      pokeHub = PokeHub.fromJson(json);
      isFetchingData = false;
    });

    print("Done fetching data...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex App'),
        centerTitle: true,
        backgroundColor: S.colors.primary,
      ),
      body: isFetchingData
          ? Center(
              child: CircularProgressIndicator(
              color: S.colors.primary,
            ))
          : GridView.count(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              crossAxisCount: 2,
              children: <Widget>[
                  if (pokeHub != null &&
                      pokeHub!.pokemon != null &&
                      pokeHub!.pokemon!.isNotEmpty)
                    for (var item in pokeHub!.pokemon as List<Pokemon>)
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PokemonDetailScreen(pokemon: item)));
                          },
                          child: Card(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Hero(
                                  tag: item.id ?? "0",
                                  child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: NetworkImage(item.img ??
                                            "https://carlo.vercel.app/imgs/carlo_about.jpg"),
                                      )))),
                              Text(
                                item.name ?? "Bulbasaur",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              )
                            ],
                          )),
                        ),
                      )
                  else
                    const Text('Nope. No items here.'),
                ]),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Fetching Data from FloatingActionButton");
            fetchData();
          },
          backgroundColor: S.colors.primary,
          child: const Icon(Icons.refresh)),
    );
  }
}

// Scaffold(
//             appBar: AppBar(
//               title: Text("Pokedex App"),
//               centerTitle: true,
//               backgroundColor: S.colors.primary,
//             ),
//             body: HomeScreen())
