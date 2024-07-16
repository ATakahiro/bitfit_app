import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// void main() {
//   UserService();
// }

class UserService {
  final int userId;
  final int id;
  final String title;
   
 
  const UserService({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory UserService.fromJson(Map<String, dynamic> json) {
    return UserService(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

  UserData() async {
    final requestUrl = Uri.parse('https://zipcloud.ibsnet.co.jp/api/search?zipcode=5300057');
    final response = await http.get(requestUrl);
 
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      return map;
    } else {
      throw Exception('Failed to load album');
    }
  }
}

Future<UserService> getUserData() async {
  
  // final url = Uri.parse('https://www.googleapis.com/youtube/v3/videos?id=${id}&key=${key}&part=${part}');
  final requestUrl = Uri.parse('https://jsonplaceholder.typicode.com/albums/1');
  final response = await http.get(requestUrl);
 
  if (response.statusCode == 200) {
    return UserService.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}