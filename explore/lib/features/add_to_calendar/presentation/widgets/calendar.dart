import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kalendarz",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text("Dom",
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
              ),
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
              Text("Zaproszeni"),
              Row(
                children: [
                  Text("Brak",
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
        )
      ],
    );
  }
}
