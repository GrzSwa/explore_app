import 'package:explore/shared/constants/enums/enums.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventPriceInfo extends StatelessWidget {
  final bool? isFree;
  const EventPriceInfo({Key? key, this.isFree = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isFree!
            ? const IconsApp(icons: SvgIconsEnum.event_free)
            : const IconsApp(icons: SvgIconsEnum.event_paid),
        const SizedBox(width: 10),
        Text(
          isFree! ? 'Wydarzenie bezpłatne' : 'Wydarzenie płatne',
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: Color.fromRGBO(49, 49, 48, 1)),
        )
      ],
    );
  }
}
