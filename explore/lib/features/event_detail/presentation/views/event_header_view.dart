import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class EventHeaderView extends StatelessWidget {
  final String title;
  final List<String> artist;
  final String date;
  final String hour;
  final String location;
  const EventHeaderView(
      {Key? key,
      required this.title,
      required this.artist,
      required this.date,
      required this.hour,
      required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        EventTitle(title: title),
        EventAuthors(artist: artist),
        EventTime(date: date, hour: hour),
        const SizedBox(height: 5),
        EventPlace(location: location),
      ]),
    );
  }
}
