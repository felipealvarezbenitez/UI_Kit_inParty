import 'package:flutter/material.dart';

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

                CustomCard(text: "Texto aqui", cardShadowColor: Colors.red.shade50),

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

class CustomCard extends StatelessWidget {

  final String text;
  final double width;
  final double height;
  final Color cardColor;
  final Color cardShadowColor;

  const CustomCard({
    super.key,
    required this.text,
    this.width = 163,
    this.height = 165,
    this.cardColor = Colors.white,
    required this.cardShadowColor,
  });
  
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: width,
      height: height,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: cardShadowColor,
                blurRadius: 5.0,
                spreadRadius: 0.5,
                offset: const Offset(0.7, 0.5)
              )
            ]
          ),
          child: Text(text),
        ),
      ),
    );
  }
}