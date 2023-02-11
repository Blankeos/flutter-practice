import 'package:calculator_app/styles/styles.dart';
import "package:flutter/material.dart";
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String equation = "";

  void appendToEquation(String character) {
    setState(() => {equation += character});
  }

  void solveEquation() {
    print("solving");
    if (equation.isEmpty) return;
    Parser p = Parser();
    Expression exp = p.parse(equation);

    // Evaluate expression:
    double eval = exp.evaluate(EvaluationType.REAL, ContextModel());

    print(eval); // = 1.0
    setState(() {
      equation = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(equation,
                              style: TextStyle(
                                  color: S.colors.primary, fontSize: 18))),
                    ),
                    SizedBox(height: 10),
                    Container(
                      // color: Colors.white,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("1");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("1", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("2");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("2", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("3");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("3", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("4");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("4", style: S.textStyles.calcButton),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("5");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("5", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("6");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("6", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("7");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("7", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("8");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("8", style: S.textStyles.calcButton),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("9");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("9", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("0");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("0", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("+");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("+", style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    appendToEquation("-");
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("-", style: S.textStyles.calcButton),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      equation = "";
                                    });
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child: Text("CLEAR",
                                      style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    if (equation.isNotEmpty) {
                                      setState(() {
                                        equation = equation.substring(
                                            0, equation.length - 1);
                                      });
                                    }
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child: Text("Remove",
                                      style: S.textStyles.calcButton),
                                ),
                                TextButton(
                                  onPressed: () {
                                    solveEquation();
                                  },
                                  style: S.buttonStyles.calcButton,
                                  child:
                                      Text("=", style: S.textStyles.calcButton),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
