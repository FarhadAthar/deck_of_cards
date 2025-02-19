import 'package:flutter/material.dart';
import 'package:flutter_deck_of_cards/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 244, 162)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Deck of Cards'),
    );
  }
}
