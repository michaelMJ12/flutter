import 'dart:async';
import 'dart:convert';
import 'dart:io';
// import 'package:http/retry.dart';

import 'package:app/Soccer_model.dart';
// import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

class SoccerApi {
  // static String api_Key = "58b89824bf7369cf174fee68aebec592";

// let create our method
// before we create this let create our model

  static Future<SoccerMatch> getAllMatches() async {
    final apiUrl =
        Uri.parse("https://v3.football.api-sports.io/fixtures?live=all");
    Map<String, String> headers = {
      'x-rapidapi-host': "v3.football.api-sports.io",
      'x-rapidapi-key': "fe1fef3301bd5a1c0f3d6acd8cc2b22f"
    };

    var response = await retry(
        () => http.Client().get(apiUrl, headers: headers),
        retryIf: (e) => e is SocketException || e is TimeoutException);

    var json = jsonDecode(response.body);
    // print(json);

    var body = SoccerMatch.fromJson(json);

    if (response.statusCode == 200) {
      return body;
    } else {
      return SoccerMatch.fromJson(jsonDecode(response.statusCode.toString()));
    }
  }

  // print(res.contentLength);\

  // var body;
  // if (response.statusCode == 200) {
  //   body = jsonDecode(response.body);
  //   print('Api service : ${body}');
  //   List< dynamic> matchesList = body['response'];
  //   print(matchesList);
  //   List<SoccerMatch> matches = matchesList
  //   .map(( dynamic item) => SoccerMatch.fromJson(item))
  //   .toList();
  //   print(matches);
  //   return matches;

}








//  List<dynamic> matchesList = body['response'];
//       print(matchesList);
    
//       List<SoccerMatch> matches = matchesList
//           .map<SoccerMatch>((dynamic item) => SoccerMatch.fromJson(item))
//           .toList();
//       print(matches);
//       return matches;