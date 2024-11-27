import 'package:explore/shared/constants/enums/enums.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowEventOnMapView extends StatelessWidget {
  const ShowEventOnMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color.fromRGBO(218, 231, 232, 1),
          ),
          width: 60,
          height: 60,
          child: const Align(
            alignment: Alignment(0.1, 0.0),
            child: IconsApp(icons: SvgIconsEnum.navigate_outlined),
          ),
        ),
        const Text(
          "Pokaż\n na mapie",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(60, 60, 59, 0.7),
          ),
        )
      ],
    );
  }
}
