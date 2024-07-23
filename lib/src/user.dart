import 'dart:core';

class User {
  final String username;
  final String username_kana;
  final String team_id;
  final String affiliation;
  final String address_number;
  final String address;
  final String tel;
  final String email;
  final String admin_name;
  final String admin_name_kana;
  final String admin_tel;
  final String detail;

  User(
    this.username,
    this.username_kana,
    this.team_id,
    this.affiliation,
    this.address_number,
    this.address,
    this.tel,
    this.email,
    this.admin_name,
    this.admin_name_kana,
    this.admin_tel,
    this.detail,
  );

  User.fromJson(Map<String, dynamic> json)
      : username        = json['results'][0]['username'],
        username_kana   = json['results'][0]['username_kana'],
        team_id         = json['results'][0]['team_id'],
        affiliation     = json['results'][0]['affiliation'],
        address_number  = json['results'][0]['address_number'],
        address         = json['results'][0]['address'],
        tel             = json['results'][0]['tel'],
        email           = json['results'][0]['email'],
        admin_name      = json['results'][0]['admin_name'],
        admin_name_kana = json['results'][0]['admin_name_kana'],
        admin_tel       = json['results'][0]['admin_tel'],
        detail          = json['results'][0]['detail'];

  Map<String, dynamic> toJson() =>
    {
      'username'        : username,
      'username_kana'   : username_kana,
      'team_id'         : team_id,
      'affiliation'     : affiliation,
      'address_number'  : address_number,
      'address'         : address,
      'tel'             : tel,
      'email'           : email,
      'admin_name'      : admin_name,
      'admin_name_kana' : admin_name_kana,
      'admin_tel'       : admin_tel,
      'detail'          : detail,
    };
}