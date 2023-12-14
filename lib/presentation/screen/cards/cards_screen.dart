import 'package:flutter/material.dart';

const cards = <Map<String,dynamic>>[
  { 'elevation': 0.0, 'label': 'Elevation 0' },
  { 'elevation': 1.0, 'label': 'Elevation 1' },
  { 'elevation': 2.0, 'label': 'Elevation 2' },
  { 'elevation': 3.0, 'label': 'Elevation 3' },
  { 'elevation': 4.0, 'label': 'Elevation 4' },
  { 'elevation': 5.0, 'label': 'Elevation 5' },
];





class CardsScreen extends StatelessWidget {

  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
                SizedBox(
                  width: 163,
                  height: 165,
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.shade50,
                            blurRadius: 5.0,
                            spreadRadius: 0.5,
                            offset: const Offset(0.7, 0.5)
                          )
                        ]
                      ),
                      child: const Text("Texto que tu quieras"),
                    ),
                  ),
                ),

                SizedBox(
                  width: 163,
                  height: 165,
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.shade50,
                            blurRadius: 5.0,
                            spreadRadius: 0.5,
                            offset: const Offset(0.7, 0.5)
                          )
                        ]
                      ),
                      child: const Text("Texto que tu quieras"),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

