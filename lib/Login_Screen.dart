import 'package:flutter/material.dart';
import 'Resister_Screen.dart';
import 'Main_Screen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: '아이디(이메일)',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '비밀번호',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Main_Screen()));
              },
              child: Text('로그인'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                logincomplete(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Resister_Screen()));
              },
              child: Text('회원가입'),
            ),
          ],
        ),
      ),
    );
  }
}

void logincomplete(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('회원가입이 완료되었습니다.'),
    ),
  );
}
