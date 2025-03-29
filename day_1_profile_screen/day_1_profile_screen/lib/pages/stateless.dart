import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name; // This value is set once and never changes
  const Profile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text("Hello $name!");
  }
}
