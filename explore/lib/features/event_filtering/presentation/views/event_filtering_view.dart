import 'package:explore/features/event_filtering/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventFilteringView extends StatelessWidget {
  const EventFilteringView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterAccordion(label: "Kultura", subCategories: const [
          "Sztuki wizualne",
          "Muzyka",
          "Muzeum",
          "Teatr",
          "Kino"
        ]),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
        const FilterCategory(label: "Oświata"),
        const Divider(height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
        const FilterCategory(label: "Ochrona zdrowia"),
        const Divider(height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
        const FilterCategory(label: "Sport"),
        const Divider(height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
        const FilterCategory(label: "Turystyka"),
        const Divider(height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
        const FilterCategory(label: "Gospodarka"),
        const Divider(height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
        const FilterCategory(label: "Ekologia"),
        const Divider(height: 1, color: Color.fromRGBO(77, 76, 76, 0.07)),
        const FilterCategory(label: "Fundusze Europejskie"),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
        FilterAccordion(label: "Rodzaj wydarzenia", subCategories: const [
          "Warsztaty",
          "Targi",
          "Pikniki",
          "Kongresy",
          "Spektakle",
          "Wystawy",
          "Konferencje",
          "Rajdy",
        ]),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
        FilterAccordion(label: "Według wieku", subCategories: const [
          "Dla dzieci",
          "Dla seniora",
        ]),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
      ],
    );
  }
}
