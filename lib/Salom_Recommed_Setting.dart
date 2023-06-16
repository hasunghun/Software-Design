import 'package:flutter/material.dart';
import 'Salom_Recommend_Screen.dart';

class Salom_Recommed_Setting extends StatefulWidget {
  @override
  _Salom_Recommed_SettingState createState() => _Salom_Recommed_SettingState();
}

class _Salom_Recommed_SettingState extends State<Salom_Recommed_Setting> {
  double distanceValue = 0.5; // 거리 값
  double ratingValue = 2.5; // 평점 값
  double reviewValue = 1.5; // 후기 값

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('미용실 추천 설정'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '거리',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Slider(
                    value: distanceValue,
                    onChanged: (newValue) {
                      setState(() {
                        distanceValue = newValue;
                      });
                    },
                    min: 0.0,
                    max: 5.0,
                    divisions: 10,
                    label: distanceValue.toString(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0'),
                      Text('5'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '평점',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Slider(
                    value: ratingValue,
                    onChanged: (newValue) {
                      setState(() {
                        ratingValue = newValue;
                      });
                    },
                    min: 0.0,
                    max: 5.0,
                    divisions: 10,
                    label: ratingValue.toString(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0'),
                      Text('5'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '후기',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Slider(
                    value: reviewValue,
                    onChanged: (newValue) {
                      setState(() {
                        reviewValue = newValue;
                      });
                    },
                    min: 0.0,
                    max: 5.0,
                    divisions: 10,
                    label: reviewValue.toString(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0'),
                      Text('5'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.0),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Salom_Recommend_Screen()));
                },
                child: Text('설정 완료'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}