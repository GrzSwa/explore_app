import 'package:explore/features/events_list/data/models/events_model.dart';

import '../widgets/widgets.dart';

class EventVerticalListView {
  List<EventsModel> eventsItems = [];

  EventVerticalListView({required this.eventsItems});

  List<EventVerticalItem> getItems() {
    return eventsItems
        .map((item) => EventVerticalItem(
              id: item.id.toString(),
              imgUrl: item.thumbnail,
              title: item.title,
              date: item.date,
              place: item.place,
            ))
        .toList();
  }
}
