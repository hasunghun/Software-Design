import 'package:flutter/material.dart';
import 'Salom_Recommed_Setting.dart';
import 'Main_Screen.dart';
import 'Salom_Information_Screen.dart';
import 'Reservation_Confirmation_Screen.dart';
import 'Hair_Search_Screen.dart';

class Salom_Recommend_Screen extends StatefulWidget {
  @override
  _Salom_Recommend_ScreenState createState() => _Salom_Recommend_ScreenState();
}

class _Salom_Recommend_ScreenState extends State<Salom_Recommend_Screen> {
  List<Map<String, String>> salonData = [
    {'name': 'A 미용실', 'description': '헤어 컷을 예약해보세요.'},
    {'name': 'B 미용실', 'description': '최신 헤어 트렌드를 경험해보세요.'},
    {'name': 'C 미용실', 'description': '새로운 헤어스타일로 변화를 주세요.'},
    {'name': 'D 미용실', 'description': '전문 스타일리스트가 도움을 줄 거예요.'},
    {'name': 'E 미용실', 'description': '헤어 컬러로 화사한 변신을 해보세요.'},
    {'name': 'F 미용실', 'description': '스파 서비스로 편안한 시간을 보내세요.'},
    {'name': 'G 미용실', 'description': '특별한 날을 위한 헤어 업스타일을 시도해보세요.'},
    {'name': 'H 미용실', 'description': '마사지 서비스로 피로를 풀어보세요.'},
    {'name': 'I 미용실', 'description': '메이크업 아티스트의 도움으로 화려한 변신을 이루세요.'},
    {'name': 'J 미용실', 'description': '헤어 확장으로 볼륨감 있는 스타일을 즐기세요.'},
    {'name': 'K 미용실', 'description': '멋진 브라이다르 메이크업으로 결혼식을 빛내보세요.'},
    {'name': 'L 미용실', 'description': '케어 트리트먼트로 머릿결을 개선하세요.'},
    {'name': 'N 미용실', 'description': '남성 전용 이발소로 멋진 면도와 헤어 스타일을 즐기세요.'},
    {'name': 'M 미용실', 'description': '헤어 액세서리로 스타일에 독특한 감성을 더하세요.'}
  ];

  bool sortByDistanceAscending = true;
  bool sortByRatingAscending = true;
  bool sortByReviewAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('미용실 추천'),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.sort),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Salom_Recommed_Setting()));
                  setState(() {
                    sortByDistanceAscending = !sortByDistanceAscending;
                    // 거리 정렬 버튼 동작 구현
                  });
                },
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Hair_Search_Screen()));
            },
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Scrollbar(
              child: ListView.builder(
                itemCount: salonData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Salom_Information_Screen()));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                salonData[index]['name']!,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.color,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                salonData[index]['description']!,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  updatingg(context);
                },
                child: Text(
                  'GPS',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Main_Screen()));
                },
                child: Text(
                  '홈',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Reservation_Confirmation_Screen()));
                },
                child: Text(
                  '예약 정보',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void updatingg(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('현재 개발 중인 기능입니다.'),
    ),
  );
}
