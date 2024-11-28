import 'package:flutter/material.dart';

class EventProgramListView extends StatelessWidget {
  final String label;
  final List<String> items;
  const EventProgramListView(
      {Key? key, required this.label, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          ...items.map((item) => Text(
                '\t\t\u2022 $item',
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ))
        ],
      ),
    );
  }
}
