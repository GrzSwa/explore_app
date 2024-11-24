import 'package:explore/config/routes/routes.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          title: "Śąskie",
          showBackButton: false,
          onBackPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutesConfig.home,
              (route) => false,
            );
          },
          onSearchPressed: () {
            print('Search pressed');
          },
          onFilterPressed: () {
            print('Filter pressed');
          }),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
