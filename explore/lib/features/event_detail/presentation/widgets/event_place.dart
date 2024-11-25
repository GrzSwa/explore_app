import 'package:flutter/material.dart';

class EventPlace extends StatelessWidget {
  final String location;
  const EventPlace({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      location,
      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
    );
  }
}
