import '../../data/models/models.dart';
import '../../data/repository/repository.dart';

class EventDetailLogic {
  final EventDetailRepository _eventDetailRepository;
  late EventDetailModel _eventDetail;
  bool _isLoading = false;

  EventDetailLogic(this._eventDetailRepository);

  EventDetailModel get eventDetail => _eventDetail;
  bool get isLoading => _isLoading;

  Future<void> fetchEventDetail() async {
    _isLoading = true;
    try {
      _eventDetail = await _eventDetailRepository.getEventDetail();
    } catch (e) {
      print(e);
    } finally {
      _isLoading = false;
    }
  }
}
