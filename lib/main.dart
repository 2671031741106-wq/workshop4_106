import 'package:flutter/material.dart';
import 'screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App ID:106"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}