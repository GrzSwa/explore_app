import 'package:flutter/material.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import '../widgets/widgets.dart';

class AddToCalendarFormView extends StatelessWidget {
  final String id;
  final String title;
  final String place;
  const AddToCalendarFormView(
      {Key? key, required this.id, required this.title, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarHeader(title: title, place: place),
        const FullDayEvent(),
        const SizedBox(height: 20),
        const Repeat(),
        const SizedBox(height: 20),
        const Calendar(),
        const SizedBox(height: 20),
        const Alert(),
        Expanded(
          child: Align(
            alignment: const Alignment(0, 0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SecondaryButton(text: "Anuluj", onPressed: () {}),
                PrimaryButton(text: "Dodaj", onPressed: () {})
              ],
            ),
          ),
        )
      ],
    );
  }
}
