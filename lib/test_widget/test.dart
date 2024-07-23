import 'package:bitfit_app/test_widget/test.dart';
import 'package:flutter/material.dart';

void main() {
  // final b = 'バナナ';
  // final t = Text(b);
  // final c = Center(child: t);
  // final s = Scaffold(body: c);
  // final a = MaterialApp(home: s);
  final controller = TextEditingController();

  final textField = TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'あなたの名前',
      hintText: 'カタカナで入力',
      errorText: '名前が長すぎます。'),
  );

  // 関数
  systemDebug() {
    debugPrint(controller.text);
  }

  final button = ElevatedButton(
    onPressed: systemDebug,
    child: Text('押してみてください。'),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green, // ボタンの背景色を青にする
      foregroundColor: Colors.white, // テキストの色を白にする
    ),
  );

  // ウィジェット呼出し
  // final bananaWidget = BananaCounterWidget2(number: 888);

  // コンテイナー
  final con = Container(
    color: Color(0xffe5e7e4),
    width: 200,
    height: 200,
    child: Image.asset('assets/images/seeds_logo.jpg'),
    alignment: Alignment.center,
    padding: EdgeInsets.all(10),
  );

  // カラム
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      // Image.asset(
      //   'assets/images/seeds_logo.jpg'
      // ),
      // Image.asset('assets/images/banana.webp'),
      // Text('レモン'),
      // Text('りんご'),
      // Text('ぶどう')
      textField,
      button
    ],
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: col,
      ),
    ),
  );

  runApp(a);
}
