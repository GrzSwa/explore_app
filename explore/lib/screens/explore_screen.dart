import 'package:explore/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          title: "Aktualności",
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
        child: Text("Explore"),
      ),
    );
  }
}
