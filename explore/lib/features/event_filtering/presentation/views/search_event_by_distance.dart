import 'package:flutter/material.dart';

class SearchEventByDistance extends StatefulWidget {
  const SearchEventByDistance({Key? key}) : super(key: key);

  @override
  _SearchEventByDistanceState createState() => _SearchEventByDistanceState();
}

class _SearchEventByDistanceState extends State<SearchEventByDistance> {
  double _currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Szukaj w odległości od swojej lokalizacji"),
            SizedBox(height: 10),
            Divider(
              height: 1,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("0km"),
                  Text("100km"),
                ],
              ),
              Slider(
                  value: _currentValue,
                  max: 100,
                  divisions: 100,
                  thumbColor: Colors.white,
                  activeColor: Color.fromRGBO(0, 102, 177, 1),
                  label: _currentValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _currentValue = value;
                    });
                  })
            ],
          ),
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }
}
