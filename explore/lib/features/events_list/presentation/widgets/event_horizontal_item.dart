import 'package:flutter/material.dart';

class EventHorizontalItem extends StatelessWidget {
  final String id;
  final String imgUrl;
  const EventHorizontalItem({Key? key, required this.id, required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.teal),
      child: Text(imgUrl),
    );
  }
}
