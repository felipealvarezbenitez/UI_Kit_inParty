import 'package:flutter/material.dart';

class SearchInputComponent extends StatefulWidget {
  const SearchInputComponent({Key? key}) : super(key: key);

  @override
  _SearchInputComponentState createState() => _SearchInputComponentState();
}

class _SearchInputComponentState extends State<SearchInputComponent> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Búsqueda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
    child: TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Introduce texto aquí',
        suffixIcon: DecoratedBox(
          decoration: const BoxDecoration(),
          child: Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3), // changes position of shadow
                ),      
              ],
              color: const Color.fromARGB(255, 139, 184, 79),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none),
        filled: true,
        fillColor: Colors.white),
      ),
    ),
  ));
 }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}