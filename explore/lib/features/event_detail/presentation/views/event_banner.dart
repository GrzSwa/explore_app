import 'package:flutter/material.dart';

class EventBanner extends StatelessWidget {
  final String imgUrl;
  const EventBanner({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.asset(
        imgUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
