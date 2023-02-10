import 'package:dosganar_e_commerce/view/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dosganar());
}

class Dosganar extends StatelessWidget {
  const Dosganar({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOSGANAR E-COMMERCE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
