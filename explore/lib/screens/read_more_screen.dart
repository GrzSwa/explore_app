import 'package:explore/features/event_detail/data/data_source/data_source.dart';
import 'package:explore/features/event_detail/data/repository/repository.dart';
import 'package:explore/features/event_detail/domain/logic/logic.dart';
import 'package:explore/features/event_detail/presentation/views/views.dart';
import 'package:explore/features/event_detail/presentation/widgets/widgets.dart';
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
              icon: const Icon(Icons.arrow_back)),
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
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.amberAccent,
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
