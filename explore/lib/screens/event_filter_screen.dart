import 'package:explore/features/event_filtering/presentation/views/view.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventFilterScreen extends StatelessWidget {
  const EventFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(239, 239, 239, 1),
        appBar: const TopBar(title: "Filtruj", exitButton: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const EventFilteringView(),
                const SizedBox(height: 40),
                const SearchEventByDistanceView(),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SecondaryButton(text: "Wyczyść", onPressed: () {}),
                      PrimaryButton(text: "Pokaż wyniki (24)", onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
