import 'package:flutter/material.dart';
import 'Hair_Search_Screen.dart';
import 'Main_Screen.dart';
import 'Reservation_Payment_Screen.dart';

class Salom_Information_Screen extends StatefulWidget {
  @override
  _Salom_Information_ScreenState createState() => _Salom_Information_ScreenState();
}

class _Salom_Information_ScreenState extends State<Salom_Information_Screen> {
  List<String> timeSlots = [
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '예약가능',
  ];

  Set<String> greenSlots = {'10:00', '13:00', '15:00', '17:00', '예약가능'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('실시간 미용실 정보'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Main_Screen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Hair_Search_Screen()));
            },
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              '실시간 미용실 예약 현황',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemCount: timeSlots.length,
                      itemBuilder: (context, index) {
                        String time = timeSlots[index];
                        bool isGreen = greenSlots.contains(time);

                        return ElevatedButton(
                          onPressed: () {
                            if (time == '예약가능') {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('메세지'),
                                    content: Text('다른 버튼을 눌러 주세요.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else if (time == '11:00') {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('메세지'),
                                    content: Text('이미 예약이 완료된 시간대입니다.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else if (time == '11:00') {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('메세지'),
                                    content: Text('이미 예약이 완료된 시간대입니다.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else if (time == '14:00') {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('메세지'),
                                    content: Text('이미 예약이 완료된 시간대입니다.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else if (time == '16:00') {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('메세지'),
                                    content: Text('이미 예약이 완료된 시간대입니다.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reservation_Payment_Screen()),
                              );
                            }
                          },
                          child: Text(
                            time,
                            style: TextStyle(
                              color: isGreen ? Colors.white : null,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: isGreen
                                ? MaterialStateProperty.all(Colors.green)
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              '미용실 정보\n우리 미용실은 품격과 전문성을 자랑합니다. 첨단 기술과 최신 트렌드를 바탕으로 고객의 개성을 살려내는 스타일을 제공합니다. 아름다움과 자신감을 향상시키는 최고의 경험을 선사합니다.온전히 고객을 위한 공간으로, 우리 미용실에서 오롯이 신경 써주는 서비스를 경험해보세요.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
