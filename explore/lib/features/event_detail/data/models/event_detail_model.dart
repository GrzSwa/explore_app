class EventDetailModel {
  final int id;
  final String title;
  final String price;
  final String img;
  final String place;
  final List<String> mainArtist;
  final String date;
  final String hour;
  final List<String> artist;
  final List<String> program;

  EventDetailModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.img,
      required this.place,
      required this.date,
      required this.hour,
      required this.mainArtist,
      required this.artist,
      required this.program});

  factory EventDetailModel.fromJson(Map<String, dynamic> json) {
    return EventDetailModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      img: json['img'],
      place: json['place'],
      date: json['date'],
      hour: json['hour'],
      mainArtist: List<String>.from(json['main_artist'] ?? []),
      artist: List<String>.from(json['artist'] ?? []),
      program: List<String>.from(json['program'] ?? []),
    );
  }
}
