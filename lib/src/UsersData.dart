import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UsersData {
  Future<Map<String, dynamic>> getUserData() async {
    String url = "http://127.0.0.1:8000/seeds/athlete/api/athlete/1/";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> addressData = jsonDecode(response.body);
      return addressData;
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
