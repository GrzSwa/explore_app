import 'package:flutter/material.dart';

class EventAuthors extends StatelessWidget {
  final List<String> artist;
  const EventAuthors({Key? key, required this.artist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      artist.join(' | '),
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
    );
  }
}
