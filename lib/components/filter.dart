
import 'package:flutter/material.dart';

class FilterOptions extends StatelessWidget {
  const FilterOptions({
    Key? key,
    this.onPressed,
    this.nameFilter,
    this.isSelected = false,
  }) : super(key: key);

  final String? nameFilter;
  final Function? onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        style: ButtonStyle(
            shadowColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              return (states.contains(MaterialState.pressed))
                  ? Colors.black
                  : Colors.grey.withOpacity(0.1);
            }),
            elevation: MaterialStateProperty.resolveWith<double>(
                (Set<MaterialState> states) {
              return (states.contains(MaterialState.pressed)) ? 2 : 1.5;
            }),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor: MaterialStateProperty.all<Color>(
                isSelected ? Colors.green : Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      color: Colors.grey,
                      width: 300,
                    )))),
        onPressed: onPressed as void Function()?,
        child: Text(nameFilter!,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black)),
      ),
    );
  }
}