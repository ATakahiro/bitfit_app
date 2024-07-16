import 'dart:core';

class Address {
  final String address1;
  final String address2;
  final String address3;
  final String kana1;
  final String kana2;
  final String kana3;
  final String prefcode;
  final String zipcode;

  Address(
    this.address1,
    this.address2,
    this.address3,
    this.kana1,
    this.kana2,
    this.kana3,
    this.prefcode,
    this.zipcode,
  );

  Address.fromJson(Map<String, dynamic> json)
      : address1  = json['results'][0]['address1'],
        address2  = json['results'][0]['address2'],
        address3  = json['results'][0]['address3'],
        kana1     = json['results'][0]['kana1'],
        kana2     = json['results'][0]['kana2'],
        kana3     = json['results'][0]['kana3'],
        prefcode  = json['results'][0]['prefcode'],
        zipcode   = json['results'][0]['zipcode'];

  Map<String, dynamic> toJson() =>
    {
      'address1': address1,
      'address2': address2,
      'address3': address3,
      'kana1'   : kana1,
      'kana2'   : kana2,
      'kana3'   : kana3,
      'prefcode': prefcode,
      'zipcode' : zipcode,
    };
}