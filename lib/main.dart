import 'package:flutter/material.dart';

void main() {
  runApp(const AuraqApp());
}

class AuraqApp extends StatelessWidget {
  const AuraqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auraq',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
