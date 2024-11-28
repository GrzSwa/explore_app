import 'package:explore/features/add_to_calendar/presentation/views/views.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCalendarScreen extends StatelessWidget {
  final String id;
  final String title;
  final String place;
  const AddToCalendarScreen(
      {Key? key, required this.id, required this.title, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TopBar(
          title: "Kalendarz imprez",
          color: Colors.transparent,
          exitButton: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AddToCalendarFormView(id: id, title: title, place: place),
        ));
  }
}
