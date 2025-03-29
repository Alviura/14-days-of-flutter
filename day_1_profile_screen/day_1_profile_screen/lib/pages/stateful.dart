import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  late int
  _counter; // late keyword is used to delay the initialization time for the variable, important when you want to declare non nullable variables

  @override
  void initState() {
    // initState() -> Used for one time set-up before the widget builds
    super.initState();
    _counter = 0;
  }

  void _incrementCounter() {
    setState(() {
      // used when the UI needs to be rebuild dynamically because the state is changing
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("You pressed the button this many times $_counter"),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text("Increase Counter"),
        ),
      ],
    );
  }
}
