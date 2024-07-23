
import 'package:bitfit_app/src/user.dart';
import 'package:bitfit_app/src/UsersData.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
      future: UsersData().getUserData().then((data) => User.fromJson(data)),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final user = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: const Text('ホーム'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // Center(
                  //   child: Text(
                  //     "Jsonデータ取得",
                  //     style: TextStyle(fontSize: 32.0),
                  //   ),
                  // ),
                  Center(
                    child: Text(
                      "${user.username}",
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                  // Center(
                  //   child: Text(
                  //     "${user.username_kana}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.team_id}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.affiliation}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.address_number}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.address}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.tel}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.email}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.admin_name}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.admin_name_kana}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.admin_tel}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                  // Center(
                  //   child: Text(
                  //     "${user.detail}",
                  //     style: const TextStyle(fontSize: 20.0),
                  //   ),
                  // ),
                ],
              )
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
