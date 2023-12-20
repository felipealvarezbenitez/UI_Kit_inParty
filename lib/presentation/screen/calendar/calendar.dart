import 'package:flutter/material.dart';

class CalendarExample extends StatefulWidget {
  const CalendarExample({super.key});

  @override
  State<CalendarExample> createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {

    

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          ElevatedButton(
            onPressed: () async {
              final DateTime? dateTime = await showDatePicker(
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.light(
                         // header text color // body text color
                      ),
                    ),
                    child: child!,
                  );
                },
                context: context, 
                initialDate: selectedDate,
                firstDate: DateTime(2000), 
                lastDate: DateTime(2025)
              );
              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                  print(selectedDate);
                });
              }
            }, 
            child: const Text('Choose Date'),
            
          ),
          Text('Día seleccionado: $selectedDate'),
        ],
      ),
    );
  }
}
