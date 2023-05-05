import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTile(
      {super.key,
      required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color.fromARGB(255, 15, 15, 15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    coffeeImagePath,
                    fit: BoxFit.cover,
                  )),
            ),
            // Coffee Name
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffeeName, style: TextStyle(fontSize: 20)),
                  SizedBox(height: 4),
                  Text('With Almond Milk',
                      style: TextStyle(color: Colors.grey[700]))
                ],
              ),
            ),

            Spacer(),
            // Price - CTA
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.attach_money, color: Colors.orange, size: 19),
                    SizedBox(width: 1),
                    Text(coffeePrice,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
