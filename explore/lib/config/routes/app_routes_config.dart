import 'package:flutter/material.dart';
import 'package:explore/screens/screens.dart';

class AppRoutesConfig {
  static const String home = '/';
  static const String news = '/news';
  static const String events = '/events';
  static const String explore = '/explore';
  static const String readMore = '/readMore';
  static const String addToCalendar = '/addToCalendar';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case news:
        return MaterialPageRoute(builder: (_) => const NewsScreen());
      case events:
        return MaterialPageRoute(builder: (_) => const EventsScreen());
      case explore:
        return MaterialPageRoute(builder: (_) => const ExploreScreen());
      case readMore:
        return MaterialPageRoute(builder: (_) => const ReadMoreScreen());
      case addToCalendar:
        return MaterialPageRoute(builder: (_) => const AddToCalendarScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
