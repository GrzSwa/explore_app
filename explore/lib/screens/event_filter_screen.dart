import 'package:explore/features/event_filtering/presentation/views/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventFilterScreen extends StatelessWidget {
  const EventFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Filtruj"),
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(
                CupertinoIcons.xmark,
                color: Color.fromRGBO(0, 102, 177, 1),
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                EventFilteringView(),
                SizedBox(height: 40),
                SearchEventByDistance(),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Wyczyść",
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
                          "Pokaż wyniki (24)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
