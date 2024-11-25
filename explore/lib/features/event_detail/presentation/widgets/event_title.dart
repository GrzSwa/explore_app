import 'package:flutter/material.dart';

class EventTitle extends StatelessWidget {
  final String title;
  const EventTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
    );
  }
}
