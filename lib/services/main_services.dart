import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MainServices {
  Future<String> readJson(String path) async {
    String response = await rootBundle.loadString(path);
    return response;
  }

  String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}
