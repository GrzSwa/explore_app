import 'package:flutter/material.dart';

class EventVerticalItem extends StatelessWidget {
  final String id;
  final String imgUrl;
  final String title;
  final String subtitle;
  final String date;
  final bool favorite;

  const EventVerticalItem(
      {Key? key,
      required this.id,
      required this.imgUrl,
      required this.title,
      required this.subtitle,
      required this.date,
      this.favorite = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.tealAccent),
      child: const Card(
        child: ListTile(
          leading: FlutterLogo(size: 72.0),
          title: Text('Three-line ListTile'),
          subtitle: Text('A sufficiently long subtitle warrants three lines.'),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      ),
    );
  }
}
