import 'package:explore/screens/screens.dart';
import 'package:explore/shared/constants/enums/enums.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddToCalendarIconView extends StatelessWidget {
  final String id;
  final String title;
  final String place;
  const AddToCalendarIconView(
      {Key? key, required this.id, required this.title, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AddToCalendarScreen(
                    id: id,
                    title: title,
                    place: place,
                  ))),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromRGBO(218, 231, 232, 1),
            ),
            width: 60,
            height: 60,
            child: const Align(
              alignment: Alignment(0.2, -0.2),
              child: IconsApp(icons: SvgIconsEnum.calendar_add_outlined),
            ),
          ),
          const Text(
            "Dodaj do\nkalendarza",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(60, 60, 59, 0.7),
            ),
          )
        ],
      ),
    );
  }
}
