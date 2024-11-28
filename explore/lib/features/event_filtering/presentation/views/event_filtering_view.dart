import 'package:explore/features/event_filtering/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

List<String> _categories = [
  "Oświata",
  "Ochrona zdrowia",
  "Sport",
  "Turystyka",
  "Gospodarka",
  "Ekologia",
  "Fundusze Europejskie"
];
List<String> _culture = [
  "Sztuki wizualne",
  "Muzyka",
  "Muzeum",
  "Teatr",
  "Kino"
];
List<String> _events_kinds = [
  "Warsztaty",
  "Targi",
  "Pikniki",
  "Kongresy",
  "Spektakle",
  "Wystawy",
  "Konferencje",
  "Rajdy",
];
List<String> _age_category = [
  "Dla dzieci",
  "Dla seniora",
];

class EventFilteringView extends StatelessWidget {
  const EventFilteringView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterAccordion(label: "Kultura", subCategories: _culture),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
        ..._categories.map((category) => Column(
              children: [
                FilterCategory(label: category),
                const Divider(
                  height: 1,
                  color: Color.fromRGBO(77, 76, 76, 0.07),
                ),
              ],
            )),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
        FilterAccordion(
            label: "Rodzaj wydarzenia", subCategories: _events_kinds),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
        FilterAccordion(label: "Według wieku", subCategories: _age_category),
        const Divider(height: 1, color: Color.fromRGBO(0, 102, 177, 1)),
      ],
    );
  }
}
