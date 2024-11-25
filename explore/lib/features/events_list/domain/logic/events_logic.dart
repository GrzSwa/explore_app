import '../../data/models/models.dart';
import '../../data/repository/repository.dart';

class EventsLogic {
  final EventsRepository _eventsRepository;
  List<EventsModel> _eventsHorizontal = [];
  List<EventsModel> _eventsVertical = [];
  bool _isLoading = false;

  EventsLogic(this._eventsRepository);

  List<EventsModel> get eventsHorizontal => _eventsHorizontal;
  List<EventsModel> get eventsVertical => _eventsVertical;
  bool get isLoading => _isLoading;

  Future<void> fetchEvents() async {
    _isLoading = true;
    try {
      var events = await _eventsRepository.getEvents();
      if (events.length > 2) {
        _eventsHorizontal = events.sublist(0, 2);
        _eventsVertical = events.sublist(2);
      } else {
        _eventsHorizontal = events;
        _eventsVertical = [];
      }
    } catch (e) {
      print(e);
    } finally {
      _isLoading = false;
    }
  }
}
