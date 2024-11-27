import 'package:flutter/material.dart';
import 'package:explore/config/routes/routes.dart';
import 'package:explore/config/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      home: const AppRoutes(),
      theme: lightTheme,
    );
  }
}
