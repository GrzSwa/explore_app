import 'package:flutter/material.dart';

class EventSocialMedia extends StatelessWidget {
  final IconData icon;
  const EventSocialMedia({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: 35, color: const Color.fromRGBO(0, 102, 177, 1));
  }
}
