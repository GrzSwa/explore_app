import 'package:flutter/material.dart';

class EventTime extends StatelessWidget {
  final String date;
  final String hour;
  const EventTime({Key? key, required this.date, required this.hour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$date r. | g. $hour",
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Color.fromRGBO(0, 102, 177, 1)),
    );
  }
}
