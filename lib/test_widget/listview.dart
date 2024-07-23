import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/**
 * ListView
 */

class Tweet {
  final String userName;
  final String iconUrl;
  final String text;
  final String createdAt;

  // コンストラクタ
  Tweet(this.userName, this.iconUrl, this.text, this.createdAt);
}

final models = [
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
  Tweet('たかし', 'seeds_logo.jpg', 'test', '2024/07/13'),
];

// モデル => ウィジェットに変換
Widget modelToWidget(Tweet model) {
  // ユーザーアイコン
  final icon = Container(
    margin: const EdgeInsets.all(20),
    width: 60,
    height: 60,
    // 画像を丸くする
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Image.asset('assets/images/${model.iconUrl}'),
    ),
  );

  // 名前と時間
  final metaText = Container(
    padding: const EdgeInsets.all(6),
    height: 40,
    alignment: Alignment.centerLeft,
    child: Text(
      '${model.userName}    ${model.createdAt}',
      style: const TextStyle(color: Colors.grey),
    ),
  );

  // 本文
  final text = Container(
    padding: const EdgeInsets.all(8),
    alignment: Alignment.centerLeft,
    child: Text(
      model.text,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );

  return Container(
    padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
      // 全体を青い枠線で囲む
      border: Border.all(color: Colors.blue),
      color: Colors.white,
    ),
    width: double.infinity,
    // 高さ
    height: 120,
    child: Row(
      children: [
        // アイコン
        icon,
        Expanded(
          child: Column(
            children: [
              // 名前と時間
              metaText,
              // 本文
              text,
            ],
          ),
        ),
      ],
    ),
  );
}

main() {
  // 画面
  final list = ListView.builder(
    itemCount: models.length,
    itemBuilder: (c,i) => modelToWidget(models[i]),
  );
  
  //アプリ
  final app = MaterialApp(
    home: list,
  );

  runApp(app);
}
