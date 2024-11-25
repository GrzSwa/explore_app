import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class GetEvents {
  Future<dynamic> fetchEvents() async {
    final String response =
        await rootBundle.loadString('assets/data/events.json');
    final List<dynamic> data = json.decode(response);

    return data;
  }
}
