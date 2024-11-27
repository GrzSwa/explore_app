import 'package:explore/shared/constants/enums/enums.dart';
import 'package:explore/shared/presentation/widgets/icons_app.dart';
import 'package:flutter/material.dart';

class EventSocialMedia extends StatelessWidget {
  final SvgIconsEnum icon;
  const EventSocialMedia({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconsApp(icons: icon);
  }
}
