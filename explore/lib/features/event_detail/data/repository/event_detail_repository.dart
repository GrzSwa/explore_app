import '../data_source/data_source.dart';
import '../models/models.dart';

class EventDetailRepository {
  final GetEventDetail _getEventDetail;

  EventDetailRepository(this._getEventDetail);

  Future<EventDetailModel> getEventDetail() async {
    final Map<String, dynamic> data = await _getEventDetail.fetchEventDetail();
    return EventDetailModel.fromJson(data);
  }
}
