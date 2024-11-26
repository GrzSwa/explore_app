import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterAccordion extends StatefulWidget {
  final String label;
  final List<String> subCategories;
  bool isExpanded;
  FilterAccordion(
      {Key? key,
      required this.label,
      required this.subCategories,
      this.isExpanded = false})
      : super(key: key);

  @override
  _FilterAccordionState createState() => _FilterAccordionState();
}

class _FilterAccordionState extends State<FilterAccordion> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
              flex: 1,
              child: IconButton(
                icon: const Icon(CupertinoIcons.chevron_down),
                color: const Color.fromRGBO(0, 102, 177, 1),
                iconSize: 20,
                onPressed: () {
                  setState(() {
                    widget.isExpanded = !widget.isExpanded;
                  });
                },
              )),
          Expanded(
            flex: 4,
            child: Text(
              widget.label,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: widget.isExpanded
                      ? const Color.fromRGBO(0, 102, 177, 1)
                      : Colors.black),
            ),
          ),
          Expanded(
            flex: 1,
            child: Checkbox(value: false, onChanged: (value) {}),
          )
        ]),
        if (widget.isExpanded)
          ...widget.subCategories.map((item) => Column(
                children: [
                  const Divider(
                      height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
                  Row(
                    children: [
                      const Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(item),
                          )),
                      Expanded(
                        flex: 1,
                        child: Checkbox(value: false, onChanged: (value) {}),
                      ),
                    ],
                  ),
                  const Divider(
                      height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
                ],
              ))
      ],
    );
  }
}
