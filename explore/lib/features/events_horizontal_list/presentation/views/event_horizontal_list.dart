import 'package:explore/features/events_horizontal_list/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventHorizontalList extends StatelessWidget {
  final List<EventHorizontalItem> eventsItems = const [
    EventHorizontalItem(id: "01", imgUrl: "Item1"),
    EventHorizontalItem(id: "02", imgUrl: "Item2"),
    EventHorizontalItem(id: "03", imgUrl: "Item3"),
    EventHorizontalItem(id: "04", imgUrl: "Item4"),
  ];
  const EventHorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 340,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: eventsItems.length,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: 20, left: index == 0 ? 20 : 0),
            child: eventsItems[index]),
      ),
    );
  }
}
