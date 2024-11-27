import 'package:explore/shared/constants/enums/svg_icons_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(228, 236, 237, 1),
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(currentIndex == 0
                  ? SvgIconsEnum.home_filled.toString()
                  : SvgIconsEnum.home_outlined.toString()),
              label: 'Śłąskie'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(currentIndex == 1
                  ? SvgIconsEnum.news_filled.toString()
                  : SvgIconsEnum.news_outlined.toString()),
              label: 'Aktualności'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(currentIndex == 2
                  ? SvgIconsEnum.event_filled.toString()
                  : SvgIconsEnum.event_outlined.toString()),
              label: 'wydarzenia'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(currentIndex == 3
                  ? SvgIconsEnum.explore_filled.toString()
                  : SvgIconsEnum.explore_outlined.toString()),
              label: 'Eksploruj'),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(77, 76, 76, 1),
        unselectedItemColor: Color.fromRGBO(77, 76, 76, 1),
      ),
    );
  }
}
