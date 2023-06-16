import 'package:flutter/material.dart';
import 'Main_Screen.dart';

class Create_Reviews_And_Ratings extends StatefulWidget {
  @override
  _Create_Reviews_And_RatingsState createState() =>
      _Create_Reviews_And_RatingsState();
}

class _Create_Reviews_And_RatingsState
    extends State<Create_Reviews_And_Ratings> {
  int rating = 0;
  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('후기 및 평점 작성'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildStar(1),
                buildStar(2),
                buildStar(3),
                buildStar(4),
                buildStar(5),
              ],
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: reviewController,
              decoration: InputDecoration(
                labelText: '후기를 적어주세요!',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                submitRating(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Main_Screen()));
              },
              child: Text('작성 완료'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStar(int starCount) {
    return GestureDetector(
      onTap: () {
        setState(() {
          rating = starCount;
        });
      },
      child: Icon(
        Icons.star,
        color: rating >= starCount ? Colors.amber : Colors.grey,
      ),
    );
  }
}

void submitRating(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('감사합니다!'),
    ),
  );
}
