import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  static const String routName = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('القرآن الكريم')));
  }
}
