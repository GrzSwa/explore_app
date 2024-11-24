import 'package:explore/screens/screens.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AppRoutes extends StatefulWidget {
  const AppRoutes({super.key});

  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<AppRoutes> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    NewsScreen(),
    EventsScreen(),
    ExploreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
