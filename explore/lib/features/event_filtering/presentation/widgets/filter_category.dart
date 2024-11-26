import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {
  final String label;
  const FilterCategory({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: SizedBox()),
        Expanded(
            flex: 4,
            child: Text(label,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ))),
        Expanded(
          flex: 1,
          child: Checkbox(value: false, onChanged: (value) {}),
        )
      ],
    );
  }
}
