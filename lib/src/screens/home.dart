import 'package:bitfit_app/service/web_api.dart';
import 'package:bitfit_app/src/address.dart';
import 'package:bitfit_app/src/addressData.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Address>(
      future: AddressData().getAddressData().then((data) => Address.fromJson(data)),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final address = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: const Text('ホーム'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Jsonデータ取得",
                      style: const TextStyle(fontSize: 32.0),
                    ),
                  ),
                  Center(
                    child: Text(
                      "${address.address1}${address.address2}${address.address3}",
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Center(
                    child: Text(
                      "${address.kana1}${address.kana2}${address.kana3}",
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Center(
                    child: Text(
                      "${address.prefcode}",
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Center(
                    child: Text(
                      "${address.zipcode}",
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
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
