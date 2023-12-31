import 'package:flutter/material.dart';


class InputComponent extends StatelessWidget {
  final TextEditingController controller;
  final Function? onPressed;

  const InputComponent({
    Key? key,
    required this.controller,
    this.onPressed
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Input bar',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
              filled: true,
              fillColor: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
      );
  }
}

class ParentWidgetInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InputComponent(
      controller: _controller,
      onPressed: () {
        print('Botón de búsqueda presionado');
      },
    );
  }
}