class EventsModel {
  final int id;
  final String title;
  final String img;
  final String place;
  final String date;

  EventsModel(
      {required this.id,
      required this.title,
      required this.img,
      required this.place,
      required this.date});

  factory EventsModel.fromJson(Map<String, dynamic> json) {
    return EventsModel(
        id: json['id'],
        title: json['title'],
        img: json['img'],
        place: json['place'],
        date: json['date']);
  }
}
