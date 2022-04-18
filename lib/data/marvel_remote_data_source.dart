import 'dart:convert';

import 'package:flutter_application_1/models/marvel_model.dart';
import 'package:http/http.dart' as http;

Future<List<MarvelModel>> getMarvel() async {
  const url = "https://www.simplifiedcoding.net/demos/marvel/";
  final response = await http.get(
      Uri.parse(url));

  if(response.statusCode == 200) {
    final parsed = json.decode(response.body);
    List<MarvelModel> list = parsed.map<MarvelModel>((json) => MarvelModel.fromJson(json)).toList();
    return list;
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
