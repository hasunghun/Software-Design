import 'package:flutter/material.dart';
import 'Login_Screen.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login_Screen(),
    );
  }
}
