import 'package:flutter/material.dart';
import 'package:explore/config/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Explore',
      home: AppRoutes(),
    );
  }
}
