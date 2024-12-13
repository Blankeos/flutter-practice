import 'package:flutter/material.dart';
import 'package:rinf/rinf.dart';

import './components/draggable-appbar.dart';
import './messages/all.dart'; // all proto messages (assignRustSignal)

import 'package:window_manager/window_manager.dart';

void main() async {
  // Must add this line for RINF
  WidgetsFlutterBinding.ensureInitialized();
  await initializeRust(assignRustSignal);

  // Must add this line for window_manager
  await windowManager.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      appBar: const DraggableAppbar(
        title: "App Bar",
        backgroundColor: Colors.amber,
        brightness: Brightness.light,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () async {
                MyPreciousData(
                  inputNumbers: [3, 4, 5],
                  inputString: 'Zero-cost abstraction',
                ).sendSignalToRust();

                final stopwatch = Stopwatch();
                stopwatch.start();

                int sum = 0;
                for (var i = 0; i < 1000; i++) {
                  sum += i;
                }
                print(
                    '🐦: The final sum: $sum. Elapsed time: ${stopwatch.elapsedMicroseconds}μs');
                stopwatch.stop();
              },
              child: const Text('Send a signal from Dart to Rust'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
