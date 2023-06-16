import 'package:flutter/material.dart';
import 'Login_Screen.dart';

class Resister_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nickname',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            CheckboxListTile(
              title: Text('I am a Consumer'),
              value: true,
              onChanged: (newValue) {},
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              title: Text('I am a Salon Owner'),
              value: false,
              onChanged: (newValue) {},
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    complete(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login_Screen()));
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void complete(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('회원가입이 완료되었습니다.'),
    ),
  );
}