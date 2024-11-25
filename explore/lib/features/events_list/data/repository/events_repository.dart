import '../data_source/get_events.dart';
import '../models/events_model.dart';

class EventsRepository {
  final GetEvents _getEvents;

  EventsRepository(this._getEvents);

  Future<List<EventsModel>> getEvents() async {
    final List<dynamic> data = await _getEvents.fetchEvents();
    return data.map((e) => EventsModel.fromJson(e)).toList();
  }
}
