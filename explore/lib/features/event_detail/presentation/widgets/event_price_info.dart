import 'package:flutter/material.dart';

class EventPriceInfo extends StatelessWidget {
  final bool? isFree;
  const EventPriceInfo({Key? key, this.isFree = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          isFree! ? Icons.free_breakfast : Icons.attach_money,
          color: const Color.fromRGBO(77, 76, 76, 1),
          size: 21,
        ),
        const SizedBox(width: 10),
        Text(
          isFree! ? 'Wydarzenie bezpłatne' : 'Wydarzenie płatne',
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: Color.fromRGBO(49, 49, 48, 1)),
        )
      ],
    );
  }
}
