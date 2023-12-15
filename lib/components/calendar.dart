import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  final CalendarFormat calendarFormat;
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;
  final Function(DateTime) onPageChanged;

  const CalendarWidget({
    Key? key,
    required this.calendarFormat,
    required this.focusedDay,
    this.selectedDay,
    required this.onDaySelected,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusedDay,
      calendarFormat: calendarFormat,
      calendarStyle: const CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: Color.fromARGB(255, 160, 188, 115),
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: Color.fromARGB(150, 160, 188, 115),
          shape: BoxShape.circle,
        ),
      ),
      
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        onDaySelected(selectedDay, focusedDay);
      },
      onPageChanged: onPageChanged,
    );
  }
}

class ParentCalendarWidget extends StatefulWidget {
  @override
  _ParentCalendarWidgetState createState() => _ParentCalendarWidgetState();
}

class _ParentCalendarWidgetState extends State<ParentCalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return CalendarWidget(
      calendarFormat: _calendarFormat,
      focusedDay: _focusedDay,
      selectedDay: _selectedDay,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
        print('Día seleccionado: $_selectedDay');
      },
      onPageChanged: (focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
      },
    );
  }
}