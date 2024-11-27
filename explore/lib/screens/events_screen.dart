import 'package:explore/config/routes/routes.dart';
import 'package:explore/features/event_search/presentation/views/views.dart';
import 'package:explore/features/events_list/data/data_source/data_source.dart';
import 'package:explore/features/events_list/data/repository/events_repository.dart';
import 'package:explore/features/events_list/domain/logic/events_logic.dart';
import 'package:explore/features/events_list/presentation/views/views.dart';
import 'package:explore/screens/screens.dart';
import 'package:explore/shared/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  late final EventsLogic _eventsLogic;
  bool _showSearch = false;

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

  void showSearchField() {
    setState(() {
      _showSearch = !_showSearch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
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
              showSearchField();
            },
            onFilterPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EventFilterScreen()));
            }),
        body: _eventsLogic.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  _showSearch
                      ? const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child:
                              SearchFieldView(), //TODO: Ustawić autofocus, żeby od razu klawaitura się pokazywała
                        )
                      : const SizedBox(),
                  EventHorizontalList(
                      eventsItems: _eventsLogic.eventsHorizontal),
                  ...EventVerticalList(eventsItems: _eventsLogic.eventsVertical)
                      .getItems(),
                ],
              ));
  }
}
