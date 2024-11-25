import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class GetEventDetail {
  Future<Map<String, dynamic>> fetchEventDetail() async {
    final String response =
        await rootBundle.loadString('assets/data/events_detail.json');
    final Map<String, dynamic> data = json.decode(response);
    return data;
  }
}
