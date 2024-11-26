import 'package:flutter/material.dart';

class FullDayEvent extends StatelessWidget {
  const FullDayEvent({Key? key}) : super(key: key);

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
                  value: true,
                  onChanged: (value) => print(value),
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
                          Icons.arrow_upward_outlined,
                          color: Color.fromRGBO(157, 157, 156, 1),
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
                          Icons.arrow_upward_outlined,
                          color: Color.fromRGBO(157, 157, 156, 1),
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
