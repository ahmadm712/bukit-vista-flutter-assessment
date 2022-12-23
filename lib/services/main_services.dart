import 'package:flutter/services.dart';

class MainServices {
  Future<String> readJson(String path) async {
    String response = await rootBundle.loadString(path);
    return response;
  }
}
