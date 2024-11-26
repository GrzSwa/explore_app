import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
                icon: Icon(currentIndex == 0
                    ? CupertinoIcons.house_fill
                    : CupertinoIcons.home),
                label: 'Śłąskie'),
            BottomNavigationBarItem(
                icon: Icon(currentIndex == 1
                    ? Icons.newspaper
                    : Icons.newspaper_outlined),
                label: 'Aktualności'),
            BottomNavigationBarItem(
                icon: Icon(currentIndex == 2
                    ? Icons.calendar_month
                    : Icons.calendar_month_outlined),
                label: 'wydarzenia'),
            BottomNavigationBarItem(
                icon: Icon(currentIndex == 3
                    ? Icons.pin_drop
                    : Icons.pin_drop_outlined),
                label: 'Eksploruj'),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(77, 76, 76, 1),
          unselectedItemColor: Color.fromRGBO(77, 76, 76, 1),
          iconSize: 28),
    );
  }
}
