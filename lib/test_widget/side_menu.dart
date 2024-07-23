import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final header = DrawerHeader(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      child: Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: const Text('ドロワーヘッダー'),
      ),
    );

    final tileA = ListTile(
      title: Text('リストタイルA'),
      onTap: () {
        debugPrint('リストタイルAをタップしました。');
      },
    );

    final tileB = ListTile(
      title: Text('リストタイルB'),
      onTap: () {
        debugPrint('リストタイルBをタップしました。');
      },
    );
    
    final tileC = ListTile(
      title: Text('リストタイルC'),
      onTap: () {
        debugPrint('リストタイルCをタップしました。');
      },
    );
    
    final tileD = ListTile(
      title: Text('リストタイルD'),
      onTap: () {
        debugPrint('リストタイルDをタップしました。');
      },
    );

    final menu = ListView(
      children: [
        header,
        tileA,
        tileB,
        tileC,
        tileD,
      ],
    );

    return menu;
  }
}
