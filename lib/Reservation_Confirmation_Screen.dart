import 'package:flutter/material.dart';
import 'Salom_Information_Screen.dart';
import 'Main_Screen.dart';
import 'Create_Reviews_And_Ratings.dart';

class Reservation_Confirmation_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('예약 완료'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '15:00으로 예약이 완료되었습니다.',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            '미용실 이름: D 미용실',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            '미용실 원장: 하성헌',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            '헤어스타일 : 숏컷',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            '예상 가격 : 13,000원',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Salom_Information_Screen()));
                },
                child: Text('예약변경'),
              ),
              ElevatedButton(
                onPressed: () {
                  showCancellationMessage(context); // 예약취소 버튼 동작 및 메시지 표시
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Main_Screen()));
                },
                child: Text('예약취소'),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Create_Reviews_And_Ratings()));
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('후기 및 평점 작성', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}

void showCancellationMessage(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('예약이 취소되었습니다.'),
    ),
  );
}
