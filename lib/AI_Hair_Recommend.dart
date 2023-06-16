import 'package:flutter/material.dart';
import 'Main_Screen.dart';

class AI_Hair_Recommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AI 머리 추천'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              '얼굴을 인식 중입니다...',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset('assets/my_image.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Main_Screen()));
              },
              child: Text('돌아가기'),
            ),
          ),
        ],
      ),
    );
  }
}