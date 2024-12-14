import 'package:flutter/material.dart';
import 'package:frb_basic/src/rust/api/simple.dart';
import 'package:frb_basic/src/rust/frb_generated.dart';
import 'package:frb_basic/src/rust/api/sum.dart' as RsSum;
import 'dart:math';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
          body: Center(
              child: Stateness()
          )
    ));
  }
}

class Stateness extends StatefulWidget {
  const Stateness({super.key});

  @override
  _StatenessState createState() => _StatenessState();
}

class _StatenessState extends State<Stateness> {
  int sumDart = 0;
  int sumRust = 0;

  int elapsedDart = 0;
  int elapsedRust = -1;

  double yDart = 0;
  double yRust = 0;


  (int, int, double) sum() {
    Stopwatch stopwatch = new Stopwatch();
    stopwatch.start();
    var som = 0;
    for (var i = 0; i < 1_000_000; i++) {
      som += i;
    }

    var rng = Random();
    var y = rng.nextDouble();

    var elapsed = stopwatch.elapsedMicroseconds;
    stopwatch.stop();

    print("🐦 Final sum: $som. Elapsed: $elapsed");
    return (som, elapsed, y);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
  Text(
      'Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Carlo")}`'),
  ElevatedButton(
      child: Text('Click Me'),
      onPressed: () {
        RsSum.sum();
        final (ssumRust, eelapsedRust, yyRust) = RsSum.sum();
        final (ssumDart, eelapsedDart, yyDart) = sum();

        setState(() {
         elapsedDart = eelapsedDart;
         elapsedRust = eelapsedRust;
         sumDart = ssumDart;
         sumRust = ssumRust;
         yRust = yyRust;
         yDart = yyDart;
        });

      }
  ),
    Text('🦀 Rust ($sumRust): $elapsedRustμs | 🐦 Dart ($sumDart): $elapsedDartμs'),
    Text('RustRNG: ${yRust.toStringAsFixed(2)} | DartRNG: ${yDart.toStringAsFixed(2)}')
    ]);
  }
}
