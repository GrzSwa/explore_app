import 'package:explore/features/event_filtering/presentation/views/view.dart';
import 'package:flutter/material.dart';

class EventFilterScreen extends StatelessWidget {
  const EventFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Filtruj"),
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(Icons.cancel)),
        ),
        body: EventFilteringView());
  }
}
