import 'package:flutter/material.dart';

class CalendarHeader extends StatelessWidget {
  final String title;
  final String place;
  const CalendarHeader({Key? key, required this.title, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        const Divider(
          height: 1,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            place,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}
