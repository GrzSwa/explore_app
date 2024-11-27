class EventsModel {
  final int id;
  final String title;
  final String banner;
  final String thumbnail;
  final String place;
  final String date;

  EventsModel(
      {required this.id,
      required this.title,
      required this.banner,
      required this.thumbnail,
      required this.place,
      required this.date});

  factory EventsModel.fromJson(Map<String, dynamic> json) {
    return EventsModel(
        id: json['id'],
        title: json['title'],
        banner: json['banner'],
        thumbnail: json['thumbnail'],
        place: json['place'],
        date: json['date']);
  }
}
