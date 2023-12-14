import 'package:flutter/material.dart';
//import 'package:inparty_components/components/filter.dart';
// import 'package:inparty_components/presentation/screen/buttons/buttons_screen.dart';
//import 'package:inparty_components/presentation/screen/cards/cards_screen.dart';
//import 'package:inparty_components/presentation/screen/checkboxes_toggles/checkboxes_toggles.dart';
import 'package:inparty_components/presentation/screen/inputs/input_component.dart';

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
        body: const SearchInputComponent()),
        // Container(
      //     color: Colors.green,
      //     child: const Padding(
      //       padding: EdgeInsets.all(20.0),
      //       child: Row(
      //         children: [
      //           FilterOptions(nameFilter: 'Ejemplo 1',),
      //           FilterOptions(nameFilter: 'Ejemplo 2',),
      //           FilterOptions(nameFilter: 'Ejemplo 3',),
      //           FilterOptions(nameFilter: 'Ejemplo 4',),
      //         ],
      //       ),
      //     ))
      // ),
      
    );
  }
}