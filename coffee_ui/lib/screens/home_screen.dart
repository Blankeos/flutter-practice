import 'package:coffee_ui/components/coffee_tile.dart';
import 'package:coffee_ui/components/coffee_type.dart';
import 'package:coffee_ui/styles/S.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// list of coffee types
  final List coffeeType = [
    ['Cappucino', true],
    ['Latte', false],
    ['Tea', false],
  ];

  final List coffeeTiles = [
    {
      "coffeeImagePath": "assets/1.jpg",
      "coffeeName": "Latte",
      "coffeePrice": "4.00",
    },
    {
      "coffeeImagePath": "assets/2.jpg",
      "coffeeName": "Cappucino",
      "coffeePrice": "3.99",
    },
    {
      "coffeeImagePath": "assets/3.jpg",
      "coffeeName": "Milky Coffee",
      "coffeePrice": "2.99",
    }
  ];

  var scaffoldKey = GlobalKey<ScaffoldState>();

// user tapped on coffee types
  void handleCoffeeTypeTap(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black87,
      key: scaffoldKey,
      drawer: Drawer(
        child: Text('create drawer widget tree here'),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        leading: IconButton(
            icon: Icon(Icons.menu_rounded, color: Colors.white),
            onPressed: () {
              if (scaffoldKey.currentState != null) {
                print("Not null let's go");
                scaffoldKey.currentState!.openDrawer();
              }
              // print("test");
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          //  Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Find the best coffee for you",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600)),
          ),

          SizedBox(height: 25),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: S.colors.graySecondary,
                  prefixIcon: Icon(Icons.search_rounded),
                  focusColor: S.colors.primary,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(18)),
                  // borderSide: BorderSide(color: Colors.grey.shade600)
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(18))),
            ),
          ),

          SizedBox(height: 25),

          // Horizontal ListView of Coffee Types
          Container(
              height: 50,
              child: ListView.builder(
                itemCount: coffeeType.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeType: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      handleCoffeeTypeTap(index);
                    },
                  );
                },
              )),

          // Horizontal ListView of Coffee Tiles
          Container(
              height: 320,
              child: ListView.builder(
                itemCount: coffeeTiles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoffeeTile(
                      coffeeImagePath: coffeeTiles[index]["coffeeImagePath"],
                      coffeeName: coffeeTiles[index]["coffeeName"],
                      coffeePrice: coffeeTiles[index]["coffeePrice"]);
                },
              ))
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black54,
            S.colors.graySecondary,
          ],
        )),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Expanded(
            flex: 1,
            child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Icon(Icons.home),
                )),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Icon(Icons.favorite),
                )),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Icon(Icons.notifications),
                )),
          ),
        ]),
      ),
    );
  }
}
