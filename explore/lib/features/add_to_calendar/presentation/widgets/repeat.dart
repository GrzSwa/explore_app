import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Repeat extends StatelessWidget {
  const Repeat({Key? key}) : super(key: key);

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
                "Powtarzaj",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text("Nigdy",
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
    );
  }
}
