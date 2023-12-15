// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inparty_components/components/calendar.dart';
import 'package:inparty_components/components/filter.dart';
import 'package:inparty_components/presentation/screen/buttons/buttons_screen.dart';
import 'package:inparty_components/presentation/screen/cards/cards_screen.dart';
import 'package:inparty_components/presentation/screen/checkboxes_toggles/checkboxes_toggles.dart';
import 'package:inparty_components/presentation/screen/inputs/input_component.dart';
import 'package:inparty_components/presentation/screen/inputs/search_input_component.dart';
import 'package:inparty_components/presentation/screen/inputs/text_area_component.dart';
import 'package:inparty_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: themedark,
      darkTheme: themelight,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children:[
                ParentWidgetSearch(),
                ParentWidgetInput(),
                ParentWidgetTextArea(),
                ParentWidgetCheckbox(),
                ParentWidgetSwitch(),
                ParentWidgetToggle(),
                ParentWidgetCard(),
                ParentWidgetAlertCard(),
                ParentCalendarWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomElevatedButton(
                    text: 'Boton primario',
                    onPressed: () {print('Botón presionado');},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomOutlinedButton(text: 'Boton secundario',  width: 200, onPressed: () {print('Botón presionado');},),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomOutlinedButtonWithIcon(icon: Icon(Icons.home), text: 'Home',  width: 200, onPressed: () {print('Botón presionado');},),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomIconButton(icon: Icon(Icons.home), iconColor: MaterialStatePropertyAll(Colors.white), backgroundColor: MaterialStatePropertyAll(Colors.lightGreen) ,onPressed: () {print('Botón presionado');},),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomIconButton(icon: Icon(Icons.person), iconColor: MaterialStatePropertyAll(Colors.white), backgroundColor: MaterialStatePropertyAll(Colors.lightGreen) ,onPressed: () {print('Botón presionado');},),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomIconButton(icon: Icon(Icons.shop), iconColor: MaterialStatePropertyAll(Colors.white), backgroundColor: MaterialStatePropertyAll(Colors.lightGreen) ,onPressed: () {print('Botón presionado');},),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomIconButton(icon: Icon(Icons.notification_add), iconColor: MaterialStatePropertyAll(Colors.white), backgroundColor: MaterialStatePropertyAll(Colors.lightGreen) ,onPressed: () {print('Botón presionado');},),
                    ),
                  ],
                ),
                ParentFilterOptions(),
                ]
            ),
          ),
        ) 
        ),
      
    );
  }
}