import 'package:flutter/material.dart';
import '../features/add_to_calendar/presentation/widgets/widgets.dart';

class AddToCalendarScreen extends StatelessWidget {
  final String id;
  final String title;
  final String place;
  const AddToCalendarScreen(
      {Key? key, required this.id, required this.title, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Kalendarz imprez"),
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(Icons.cancel)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
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
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Anuluj",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(0, 102, 177, 1),
                            ),
                          )),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            foregroundColor:
                                WidgetStateProperty.all(Colors.white),
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromRGBO(0, 102, 177, 1))),
                        child: const Text(
                          "Dodaj",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
