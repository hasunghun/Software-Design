import 'package:flutter/material.dart';
import 'package:flutter_application_1/Posts_Screen.dart';
import 'Login_Screen.dart';
import 'Reservation_Confirmation_Screen.dart';
import 'AI_Hair_Recommend.dart';
import 'Salom_Recommed_Setting.dart';
import 'Hair_Search_Screen.dart';
import 'Posts_Screen.dart';
import 'Gps_Screen.dart';

class Main_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                SizedBox(height: 16.0), // 버튼 간격 추가
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AI_Hair_Recommend()));
                  },
                  child: Text('AI 머리 추천'),
                ),
                SizedBox(height: 16.0), // 버튼 간격 추가
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Salom_Recommed_Setting()));
                  },
                  child: Text('(동네) 미용실 추천'),
                ),
                SizedBox(height: 16.0), // 버튼 간격 추가
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Hair_Search_Screen()));
                  },
                  child: Text('미용실 검색'),
                ),
                SizedBox(height: 16.0), // 버튼 간격 추가
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Posts_Screen()));
                  },
                  child: Text('게시물'),
                ),
              ],
            ),
          ),

          SizedBox(height: 16.0), // 이미지와의 간격
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/kkk_image.jpg', // 이미지의 경로와 파일 이름
              width: 200.0, // 이미지의 가로 크기
              height: 200.0, // 이미지의 세로 크기
              fit: BoxFit.cover, // 이미지를 가로 및 세로 비율에 맞게 확대 또는 축소하여 보여줍니다.
            ),
          ),

          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Gps_Screen()));
                  },
                  child: Text('GPS'),
                ),
                ElevatedButton(
                  onPressed: () {
                    logoutcomplete(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login_Screen()));
                  },
                  child: Text('로그아웃'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Reservation_Confirmation_Screen()));
                  },
                  child: Text('예약 정보'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void updating(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('현재 개발 중인 기능입니다.'),
    ),
  );
}

void logoutcomplete(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('로그아웃이 완료되었습니다.'),
    ),
  );
}
