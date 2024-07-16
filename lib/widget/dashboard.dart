import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xffe5e7e4);
    // トップセクション
    final topSection = SizedBox(
      width: double.infinity,
      // height: ,
      child: Image.asset('assets/images/seeds_logo.jpg'),
    );

    /**
   * トップRow
   */
    // 横一覧
    final topRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // 左アイコン
        Container(
          color: Colors.grey,
          width: 80,
          height: 80,
          child: const Text('グラフ描画'),
        ),
        // 中央アイコン
        Container(
          color: Colors.grey,
          width: 110,
          height: 110,
          child: const Text('グラフ描画'),
        ),
        // 右アイコン
        Container(
          color: Colors.grey,
          width: 80,
          height: 80,
          child: const Text('グラフ描画'),
        ),
      ],
    );

    // ボタン
    final button = Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text('水素吸引'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(200, 50),
        ),
      ),
    );

    // アプリ画面構成
    final base = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ホーム'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: myColor,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [topSection, topRow, button],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

    return base;
  }
}
