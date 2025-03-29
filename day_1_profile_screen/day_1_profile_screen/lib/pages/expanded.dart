import 'package:flutter/material.dart';

class Expand extends StatelessWidget {
  const Expand({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Container(color: Colors.green)),
        Expanded(flex: 2, child: Container(color: Colors.amber)),
        Expanded(flex: 3, child: Container(color: Colors.red)),
      ],
    );
  }
}
