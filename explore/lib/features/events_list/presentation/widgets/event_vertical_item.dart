import 'package:explore/features/events_list/presentation/widgets/widgets.dart';
import 'package:explore/screens/screens.dart';
import 'package:flutter/material.dart';
import 'event_card.dart';

class EventVerticalItem extends StatefulWidget {
  final String id;
  final String imgUrl;
  final String title;
  final String place;
  final String date;
  final bool favorite;

  const EventVerticalItem(
      {Key? key,
      required this.id,
      required this.imgUrl,
      required this.title,
      required this.place,
      required this.date,
      this.favorite = false})
      : super(key: key);

  @override
  State<EventVerticalItem> createState() => _EventVerticalItemState();
}

class _EventVerticalItemState extends State<EventVerticalItem> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.favorite;
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ReadMoreScreen(id: widget.id))),
      child: Container(
          width: double.infinity,
          height: 100,
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: EventCard(
            //TODO: Zrobić, żeby ten widget nie korzystał z EventCard
            image: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Image.asset(
                widget.imgUrl,
                width: 117,
                height: 114,
                fit: BoxFit.cover,
              ),
            ),
            title: widget.title,
            subtitle: widget.place,
            date: widget.date,
            icons: [
              GestureDetector(
                onTap: _toggleFavorite,
                child: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                  color: _isFavorite
                      ? Color.fromRGBO(13, 222, 174, 1)
                      : Colors.white,
                ),
              ),
              CornerIcon(
                color: _isFavorite
                    ? Color.fromRGBO(13, 222, 174, 1)
                    : Colors.white,
                size: 12,
              )
            ],
          )),
    );
  }
}
