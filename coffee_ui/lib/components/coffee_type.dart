import 'package:coffee_ui/styles/S.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeeType(
      {super.key,
      required this.coffeeType,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 12.5),
        child: Container(
          padding: EdgeInsets.only(top: 12.5, left: 12.5, right: 12.5),
          decoration: BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              Text(coffeeType,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.orange : Colors.white)),
              SizedBox(
                height: 7,
              ),
              if (isSelected)
                Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: S.colors.primary,
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
