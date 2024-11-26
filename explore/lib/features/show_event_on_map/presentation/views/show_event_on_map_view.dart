import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowEventOnMapView extends StatelessWidget {
  const ShowEventOnMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color.fromRGBO(218, 231, 232, 1),
          ),
          width: 60,
          height: 60,
          child: const Icon(
            CupertinoIcons.location,
            size: 31,
            color: Color.fromRGBO(13, 222, 174, 1),
          ),
        ),
        const Text(
          "Pokaż\n na mapie",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(60, 60, 59, 0.7),
          ),
        )
      ],
    );
  }
}
