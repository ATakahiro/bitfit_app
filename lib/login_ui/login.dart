import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  Color myColor = Color(0xffe5e7e4);

  // ロゴ表示
  Widget _myLogo() {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Image.asset('assets/images/seeds_logo.jpg'),
    );
  }

  // 入力エリア
  Widget _InputArea() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          // ユーザー名入力
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'ユーザー名を入力してください',
            ),
          ),
        ),
        Padding(
          // パスワード入力
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            obscureText: _isObscure,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  }
              )
            ),
          ),
        ),
        Center(
          child: ElevatedButton(onPressed: () {}, child: Text('ログイン')),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: Center(
        child: Container(
          color: myColor,
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            _myLogo(),
            _InputArea(),
          ],),
        ),
      ),
    );
  }
}
