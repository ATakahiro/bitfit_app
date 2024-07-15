import 'package:bitfit_app/widget/login.dart';
import 'package:flutter/material.dart';

main() {
  Color myColor = Color(0xffe5e7e4);
  final login = LoginWidget();

  final app = MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: myColor,
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [login],
            ),
          ),
        ),
      ),
    );
    
  runApp(app);
}
