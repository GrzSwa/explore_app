import 'package:flutter/material.dart';

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
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Śłąskie'),
        BottomNavigationBarItem(
            icon: Icon(Icons.article), label: 'Aktualności'),
        BottomNavigationBarItem(icon: Icon(Icons.event), label: 'wydarzenia'),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Eksploruj'),
      ],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    );
  }
}
