import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddressData {
  Future<Map<String, dynamic>> getAddressData() async {
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=5300057";
    final requestUrl =
        Uri.parse('https://zipcloud.ibsnet.co.jp/api/search?zipcode=5300057');
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> addressData = jsonDecode(response.body);
      debugPrint(addressData['results'][0]['address1']);
      return addressData;
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
