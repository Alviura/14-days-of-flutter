import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name; // This value is set once and never changes
  const Profile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text("Hello $name!");
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
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

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [Profile(name: "Alvin"), CounterApp()], // constructor
          ),
        ),
      ),
    ),
  );
}
