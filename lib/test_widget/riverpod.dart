import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/**
 * データ監視 パッケージ[RiverPod]
 */
main() {
  // アプリ
  const app = MaterialApp(home: Sample());
  // プロバイダースコープで囲む
  const scope = ProviderScope(child: app);
  // スコープで囲まれたアプリを動かす
  runApp(scope);
}

// プロバイダー
final nicknameProvider = StateProvider<String>((ref) {
  // 変化する値
  return "ルビードッグ";
});

class Sample extends ConsumerWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // データ監視
    final nickname = ref.watch(nicknameProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(nickname),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(nickname),
            ElevatedButton(onPressed: () => tapA(ref), child: const Text('A')),
            ElevatedButton(onPressed: () => tapB(ref), child: const Text('B')),
            ElevatedButton(onPressed: () => tapC(ref), child: const Text('C')),
            Text(nickname),
          ],
        ),
      ),
    );
  }

  // ノティファイアでデータ変更する
  tapA(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーキャット";
  }

  tapB(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーバード";
  }

  tapC(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーフィッシュ";
  }
}
