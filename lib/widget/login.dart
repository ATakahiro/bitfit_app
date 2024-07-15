import 'package:flutter/material.dart';

// ログイン画面
class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;

    // ロゴ
    final logo = SizedBox(
      width: double.infinity,
      height: 200,
      child: Image.asset('assets/images/seeds_logo.jpg'),
    );

    // ユーザー入力
    final InputUser = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        decoration: const InputDecoration(labelText: 'ユーザー名を入力してください。'),
      ),
    );

    // パスワード入力
    final InputPassword = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        obscureText: _isObscure,
        decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
              onPressed: () {},
            )),
      ),
    );

    // ログインボタン
    final button = Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text('ログイン'),
      ),
    );

    // 入力エリア
    final inputArea = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [InputUser, InputPassword, button],
    );

    final base = Column(
      children: [logo, inputArea],
    );

    return base;
  }
}
