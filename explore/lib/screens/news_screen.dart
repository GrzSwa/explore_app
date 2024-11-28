import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      appBar: TopBar(
        title: "Aktualności",
      ),
      body: Center(
        child: Text("News"),
      ),
    );
  }
}
