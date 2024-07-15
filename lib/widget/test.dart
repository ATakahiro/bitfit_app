import 'package:flutter/material.dart';

class BananaCounterWidget extends StatelessWidget {
  // ババの数
  final int number;
  const BananaCounterWidget(
    {
      Key?key,
      required this.number
    }
  );

  @override
  Widget build(BuildContext context) {
    // バナナ画像
    final banana = Image.asset('assets/images/banana.webp');

    // 数字の部分
    final text = Text('$number');

    // 横に並べる
    final row = Row(
      children: [
        banana,
        text
      ],
    );

    // 色と大きさを決める
    final con = Container(
      color: Colors.black87,
      child: row,
      width: 200,
      height: 200,
    );

    return con;
  }
}

class BananaCounterWidget2 extends StatelessWidget {
  // ババの数
  final int number;
  const BananaCounterWidget2(
    {
      Key?key,
      required this.number
    }
  );

  @override
  Widget build(BuildContext context) {
    // バナナ画像
    final banana = Image.asset('assets/images/seeds_logo.jpg');

    // 数字の部分
    final text = Text('$number');

    // 横に並べる
    final row = Row(
      children: [
        banana,
        text
      ],
    );

    // 色と大きさを決める
    final con = Container(
      color: Colors.black87,
      child: row,
      width: 200,
      height: 200,
    );

    return con;
  }
}
