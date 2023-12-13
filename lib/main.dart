import 'package:flutter/material.dart';
// import 'package:inparty_components/presentation/screen/buttons/buttons_screen.dart';
import 'package:inparty_components/presentation/screen/cards/cards_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const CardsScreen()
      ),
    );
  }
}