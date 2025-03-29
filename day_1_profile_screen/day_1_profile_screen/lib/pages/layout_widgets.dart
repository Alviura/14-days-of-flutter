import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  const LayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width:
              double
                  .infinity, // ensures the container occupies the full width of the screen
          height: 100,
          color: Colors.blue,
          child: Center(child: Center(child: Text("Container - Full Width"))),
        ),
        SizedBox(height: 20),
        Row(
          spacing: 2.0, // specifies the size of space in between the containers
          children: [
            Expanded(
              flex: 2, // takes up twice the space of the other containers
              child: Container(
                height: 100,
                color: Colors.red,
                child: Center(child: Text("Container 1 of the Row")),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.green,
                child: Center(child: Text("Container 2 of the Row")),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Column(
          spacing: 2.0,
          children: [
            Container(
              color: Colors.purple,
              height: 100,
              child: Center(child: Text("Container 1 of the Column")),
            ),
            Container(
              color: Colors.orange,
              height: 100,
              child: Center(child: Text("Container 2 of the Column")),
            ),
          ],
        ),
        SizedBox(height: 20),
        Stack(
          children: [
            Container(height: 100, color: Colors.red),
            Positioned(
              top: 10,
              left: 10,
              child: Container(width: 50, height: 50, color: Colors.black),
            ),
            Positioned(
              top: 10,
              left: 60,
              child: Container(width: 50, height: 50, color: Colors.amber),
            ),
          ],
        ),
        SizedBox(height: 20),
        Wrap(
          spacing: 2,
          children: List.generate(5, (index) {
            return Container(width: 70, height: 70, color: Colors.purple);
          }),
        ),
      ],
    );
  }
}
