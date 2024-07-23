import 'dart:convert';

import 'package:bitfit_app/test_widget/level1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/**
 * Go Router
 */

main() {
  test1();
}

// 非同期関数
void test1() async {
  // Stubを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();

  // JSON <-- Stub
  final json = await rootBundle.loadString('stub/level1.json');

  // JsonMap <-- Json
  final map = jsonDecode(json);

  // Dart <-- JsonMap
  final data = Level1.fromJson(map);

  debugPrint('データの中身は $data');
}

void test2() async {}

void test3() async {}

void test4() async {}

void test5() async {}

void test6() async {}

void test7() async {}

void test8() async {}

void test9() async {}

void test10() async {}
