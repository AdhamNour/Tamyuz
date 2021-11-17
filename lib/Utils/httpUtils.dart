// ignore_for_file: file_names

import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;

class httpUtils {
  static Future<String> getXSFRToken() async {
    var res = await http.get(
        Uri.parse('https://auth.tamayyuzcenter.com/sanctum/csrf-cookie/'),
        headers: {'Content-Type': 'application/json'});
    // print('Adham');
    // print(res.headers['set-cookie']);
    // print('Adham');
    return res.headers['set-cookie']!.split(';')[0].split('=')[1].split('%')[0];
  }

  static Future<bool> signIn(
      {required String email, required String password}) async {
    var queryParams = {'email': email, 'password': password};
    var uri = Uri.https('auth.tamayyuzcenter.com', 'api/login', queryParams);
    print(uri.toString());

    var token = await getXSFRToken();
    print(token);

    // var res = await http.post(uri,
    //     headers: {'Content-Type': 'application/json', 'X-XSRF-TOKEN': token},
    //     body: jsonEncode({'is_from_phone': 1}));
    // print(res.body);
    return true;
  }
}
