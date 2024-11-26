import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullDayEvent extends StatefulWidget {
  const FullDayEvent({Key? key}) : super(key: key);

  @override
  State<FullDayEvent> createState() => _FullDayEventState();
}

class _FullDayEventState extends State<FullDayEvent> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Wydarzenie całodniowe",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Switch(
                  trackColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return Color.fromRGBO(13, 222, 174, 1);
                    } else {
                      return Colors.white;
                    }
                  }),
                  // inactiveTrackColor: Colors.white,
                  thumbColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.white;
                    } else {
                      return Color.fromRGBO(77, 76, 76, 1);
                    }
                  }),
                  thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return const Icon(
                        Icons.check,
                        color: Color.fromRGBO(13, 222, 174, 1),
                      );
                    }
                    return null; // All other states will use the default thumbIcon.
                  }),
                  value: _switch,
                  onChanged: (value) => {
                    setState(() {
                      _switch = value;
                    })
                  },
                )
              ],
            ),
          ),
          const Divider(
            height: 1,
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Początek"),
                    Row(
                      children: [
                        Text("18.11.24 r.",
                            style: TextStyle(
                              color: Color.fromRGBO(157, 157, 156, 1),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          CupertinoIcons.chevron_up_chevron_down,
                          color: Color.fromRGBO(157, 157, 156, 1),
                          size: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Koniec"),
                    Row(
                      children: [
                        Text("19.11.24 r.",
                            style: TextStyle(
                              color: Color.fromRGBO(157, 157, 156, 1),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          CupertinoIcons.chevron_up_chevron_down,
                          color: Color.fromRGBO(157, 157, 156, 1),
                          size: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
