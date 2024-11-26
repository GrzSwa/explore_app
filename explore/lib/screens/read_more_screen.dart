import 'package:explore/features/add_to_calendar/presentation/views/views.dart';
import 'package:explore/features/event_detail/data/data_source/data_source.dart';
import 'package:explore/features/event_detail/data/repository/repository.dart';
import 'package:explore/features/event_detail/domain/logic/logic.dart';
import 'package:explore/features/event_detail/presentation/views/views.dart';
import 'package:explore/features/event_detail/presentation/widgets/widgets.dart';
import 'package:explore/features/share_event/presentation/views/share_event_views.dart';
import 'package:explore/features/show_event_on_map/presentation/views/views.dart';
import 'package:explore/features/show_event_website/presentation/views/views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadMoreScreen extends StatefulWidget {
  final String id;
  const ReadMoreScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<ReadMoreScreen> createState() => _ReadMoreScreenState();
}

class _ReadMoreScreenState extends State<ReadMoreScreen> {
  late final EventDetailLogic _eventDetailLogic;

  @override
  void initState() {
    super.initState();
    _eventDetailLogic =
        EventDetailLogic(EventDetailRepository(GetEventDetail()));
    _fetchData();
  }

  Future<void> _fetchData() async {
    await _eventDetailLogic.fetchEventDetail();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(
              CupertinoIcons.arrow_left,
              color: Color.fromRGBO(0, 102, 177, 1),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: SingleChildScrollView(
            child: _eventDetailLogic.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(children: [
                    EventHeader(
                      title: _eventDetailLogic.eventDetail.title,
                      artist: _eventDetailLogic.eventDetail.mainArtist,
                      date: _eventDetailLogic.eventDetail.date,
                      hour: _eventDetailLogic.eventDetail.hour,
                      location: _eventDetailLogic.eventDetail.place,
                    ),
                    const SizedBox(height: 15),
                    EventBanner(imgUrl: _eventDetailLogic.eventDetail.img),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AddToCalendarView(
                            id: _eventDetailLogic.eventDetail.id.toString(),
                            title: _eventDetailLogic.eventDetail.title,
                            place: _eventDetailLogic.eventDetail.place,
                          ),
                          const ShareEventView(),
                          const ShowEventOnMapView(),
                          const ShowEventWebsiteView()
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    EventProgramList(
                        label: "Wykonawcy:",
                        items: _eventDetailLogic.eventDetail.artist),
                    EventProgramList(
                        label: "Program:",
                        items: _eventDetailLogic.eventDetail.program),
                    const SizedBox(height: 20),
                    EventPriceInfo(
                      isFree: _eventDetailLogic.eventDetail.price == "free"
                          ? true
                          : false,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        EventSocialMedia(icon: Icons.facebook_outlined),
                        SizedBox(width: 10),
                        EventSocialMedia(icon: Icons.camera_alt_outlined)
                      ],
                    ),
                    const SizedBox(height: 20),
                  ]),
          ),
        ));
  }
}
