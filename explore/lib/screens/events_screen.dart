import 'package:explore/config/routes/routes.dart';
import 'package:explore/features/events_horizontal_list/presentation/views/views.dart';
import 'package:explore/features/events_vertical_list/presentation/views/views.dart';
import 'package:explore/shared/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
            title: "Wydarzenia",
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
        body: ListView(
          children: const [
            EventHorizontalList(),
            ...EventVerticalList.eventsItems
          ],
        ));
  }
}
