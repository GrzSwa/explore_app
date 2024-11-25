import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final ClipRRect image;
  final String title;
  final String subtitle;
  final String date;
  final List<Widget> icons;
  const EventCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(251, 249, 249, 0.8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.07),
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          image,
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  "$date r.",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(49, 49, 48, 0.6)),
                ),
              ],
            ),
          )),
          Container(
            padding: const EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 33,
                    height: 33,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: const Color.fromRGBO(239, 239, 239, 1),
                    ),
                    child: icons[0]),
                Container(
                    width: 33,
                    height: 33,
                    alignment: Alignment.center,
                    child: icons[1]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
