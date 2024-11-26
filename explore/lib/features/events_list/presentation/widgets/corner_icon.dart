import 'package:flutter/material.dart';

class CornerIcon extends StatelessWidget {
  final Color? color;
  final double? size;
  const CornerIcon({Key? key, this.color, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      width: size ?? 10,
      height: size ?? 10,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(
                width: size != null ? size! / 4 : 5,
                color: color ?? Colors.white),
            right: BorderSide(
                width: size != null ? size! / 4 : 5,
                color: color ?? Colors.white),
          )),
    );
  }
}
