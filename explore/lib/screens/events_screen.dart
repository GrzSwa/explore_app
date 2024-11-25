import 'package:explore/config/routes/routes.dart';
import 'package:explore/features/events_list/data/data_source/data_source.dart';
import 'package:explore/features/events_list/data/repository/events_repository.dart';
import 'package:explore/features/events_list/domain/logic/events_logic.dart';
import 'package:explore/features/events_list/presentation/views/views.dart';
import 'package:explore/shared/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  late final EventsLogic _eventsLogic;

  @override
  void initState() {
    super.initState();
    _eventsLogic = EventsLogic(EventsRepository(GetEvents()));
    _fetchData();
  }

  Future<void> _fetchData() async {
    await _eventsLogic.fetchEvents();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(239, 239, 239, 1),
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
        body: _eventsLogic.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  EventHorizontalList(
                      eventsItems: _eventsLogic.eventsHorizontal),
                  ...EventVerticalList(eventsItems: _eventsLogic.eventsVertical)
                      .getItems(),
                ],
              ));
  }
}
