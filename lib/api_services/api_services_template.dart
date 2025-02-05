import 'dart:convert';

import 'package:http/http.dart';

abstract class ApiService {
  final baseURL = 'https://deckofcardsapi.com/api/deck/';
  String get apiURL;
  String get url => baseURL + apiURL;

  fetch() async {
    var uri = Uri.parse(url);
    var response = await get(uri);
    if (response.isSuccess) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'Failed to load data because: ${response.statusCode} - ${response.reasonPhrase}'
      );
    }
  }
}

extension StatusCodes on Response {
  bool get isSuccess => statusCode >= 200 && statusCode < 300;
}
