// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:coffee_ui/components/coffee_tile.dart';
import 'package:coffee_ui/components/coffee_type.dart';
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
  ];
// user tapped on coffee types
  void handleCoffeeTypeTap(int index) {
    setState(() {
      // for (int i = 0; i < coffeeType.length; i++) {
      //   coffeeType[index][i] = false;
      // }
      // coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
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
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600))),
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
          Expanded(
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [CoffeeTile(), CoffeeTile(), CoffeeTile()]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
      ]),
      // body: Center(
      // child: Text("Hello World"),
      // child: Image.asset("assets/1.jpg"),
      // ),
    );
  }
}
