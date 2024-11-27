import 'package:explore/shared/constants/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsApp extends StatelessWidget {
  final SvgIconsEnum icons;
  const IconsApp({Key? key, required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icons.toString());
  }
}
