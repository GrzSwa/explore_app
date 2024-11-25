import 'package:explore/features/events_list/data/models/events_model.dart';

import '../widgets/widgets.dart';

class EventVerticalList {
  List<EventsModel> eventsItems = [];

  EventVerticalList({required this.eventsItems});

  List<EventVerticalItem> getItems() {
    return eventsItems
        .map((item) => EventVerticalItem(
              id: item.id.toString(),
              imgUrl: item.img,
              title: item.title,
              date: item.date,
              place: item.place,
            ))
        .toList();
  }
}
