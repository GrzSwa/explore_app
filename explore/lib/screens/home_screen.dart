import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      appBar: TopBar(
        title: "Śląskie",
        showBackButton: false,
      ),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
