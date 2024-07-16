import 'package:flutter/material.dart';

// import 'package:bitfit_app/service/web_api.dart';
import 'package:bitfit_app/src/screens/home.dart';
import 'package:bitfit_app/src/screens/fl_chart_line_chart_sample.dart';
// import 'package:bitfit_app/src/screens/bookmark.dart';
// import 'package:bitfit_app/src/screens/notification.dart';
// import 'package:bitfit_app/src/screens/account.dart';

import 'package:bitfit_app/widget/dashboard.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // ボトムナビの表示画面
  static const _screens = [
    DashboardWidget(),
    // BookmarkScreen(),
    FlChartLineChartSample(),
    // NotificationScreen(),
    // AccountScreen()
    HomeScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: '表'),
            // BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'お知らせ'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'マイページ'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}
