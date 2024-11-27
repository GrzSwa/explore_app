import 'package:explore/features/events_list/data/models/events_model.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class EventHorizontalList extends StatelessWidget {
  final List<EventsModel> eventsItems;
  const EventHorizontalList({Key? key, required this.eventsItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 340,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: eventsItems.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 20, left: index == 0 ? 20 : 0),
          child: EventHorizontalItem(
              id: eventsItems[index].id.toString(),
              imgUrl: eventsItems[index].thumbnail),
        ),
      ),
    );
  }
}
