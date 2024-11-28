import 'package:flutter/material.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      appBar: TopBar(
        title: "Eksploruj",
      ),
      body: Center(
        child: Text("Explore"),
      ),
    );
  }
}
