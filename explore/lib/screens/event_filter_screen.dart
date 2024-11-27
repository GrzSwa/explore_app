import 'package:explore/features/event_filtering/presentation/views/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventFilterScreen extends StatelessWidget {
  const EventFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: const Text("Filtruj"),
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: Icon(
                CupertinoIcons.xmark,
                color: Theme.of(context).colorScheme.primary,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const EventFilteringView(),
                const SizedBox(height: 40),
                const SearchEventByDistance(),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {}, child: const Text("Wyczyść")),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Pokaż wyniki (24)"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
