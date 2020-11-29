// adicionar o package htttp no pubspec.yaml
import 'dart:convert';
import 'package:futebolagora/src/models/fut_model.dart';
import 'package:http/http.dart';

class FutApi {
  // set a variavel que vai receber o link da aPictureLayer
  // o endpoit da url

  // final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";
  final String apiUrl =
      "https://v3.football.api-sports.io/fixtures?season=2020&league=39";

  // static const api_key = "61fd27f434ad8308ffaa83356db43683";
  // criar a conta na api

  // adicionando os headers
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    // 'x-rapidapi-key': api_key
    // 'x-rapidapi-key': "61fd27f434ad8308ffaa83356db43683"
    // 'x-rapidapi-key': "54a568ae988403b79c76ef2b968b713b"
    'x-rapidapi-key': "6a4fdfad7c8953c93a1c991df365b024"
  };

  // Service

  // criar um metodo, mas antes precisa criar o model
  Future<void> getAllMatches() async {
    Response res = await get(apiUrl, headers: headers);

    var body;
    if (res.statusCode == 200) {
      // testando se estamos conectado a base dados
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      // print("Api service: $body");
      List<FutMatch> matches =
          matchesList.map((dynamic item) => FutMatch.fromJson(item)).toList();

      return matches;
    }
  }
}
