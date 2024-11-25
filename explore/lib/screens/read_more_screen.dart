import 'package:explore/features/event_detail/presentation/views/views.dart';
import 'package:explore/features/event_detail/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ReadMoreScreen extends StatelessWidget {
  final String id;
  const ReadMoreScreen({Key? key, required this.id}) : super(key: key);

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
            child: Column(children: [
              const EventHeader(
                title: "Gala muzyki filmowej",
                artist: ["Cerekwicka", "Ziółko", "Talarczyk", "Sztor", "Chór"],
                date: "03.09.24",
                hour: "18.00",
                location:
                    "Hala widowiskowo-sportowa Spodek \nal. Korfantego 35, Katowice",
              ),
              const SizedBox(height: 15),
              const EventBanner(
                  imgUrl: "assets/images/a08680e3cc55d9d937a3490b188eef3c.jpg"),
              const SizedBox(height: 15),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.amberAccent,
              ),
              const SizedBox(height: 15),
              const EventProgramList(label: "Wykonawcy:", items: [
                'Katarzyna Cerekwicka',
                'Mateusz Ziółko',
                'Robert Talarczyk – prowadzenie',
                'Maciej Sztor – dyrygent',
                'Jarosław Wolanin – przygotowanie Chóru',
                'Mateusz Kokot – animacje',
                'Katarzyna Kroczek-Wasińska – animacje',
                'Wojciech Kukuczka – animacje',
                'Witold Suchoń – animacje',
                'Tomasz Olszewski – wizualizacje',
                'Orkiestra Symfoniczna Filharmonii Śląskiej',
                'Chór Filharmonii Śląskiej'
              ]),
              const EventProgramList(label: "Program:", items: [
                "John Williams – Star Wars",
                "John Williams – Szczęki",
                "John Williams – Harry Potter",
                "James Horner – Titanic",
                "Hans Zimmer – Batman vs Superman",
                "Hans Zimmer – Incepcja",
                "Hans Zimmer – Piraci z Karaibów",
                "Harry Gregson-Williams – Opowieści z Narnii",
                "John Powell – Jak Wytresować Smoka",
                "David Arnold – James Bond",
                "Ryszard Strauss – Odyseja Kosmiczna",
                "James Newton Howard – Igrzyska Śmierci",
                "Angelo Badalamenti – Twin Peaks",
              ]),
              const SizedBox(height: 20),
              const EventPriceInfo(),
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
