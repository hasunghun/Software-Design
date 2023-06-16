import 'package:flutter/material.dart';
import 'package:flutter_application_1/View_Post_Screen.dart';
import 'Main_Screen.dart';
import 'Creat_A_Post_Screen.dart';

class Posts_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('게시물'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  PostItem(title: '첫 번째 게시물', content: '첫 번째 게시물 내용입니다.'),
                  PostItem(title: '두 번째 게시물', content: '두 번째 게시물 내용입니다.'),
                  PostItem(title: '세 번째 게시물', content: '세 번째 게시물 내용입니다.'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Main_Screen()));
                    },
                    child: Text('돌아가기'),
                  ),
                  SizedBox(width: 60.0),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Creat_A_Post_Screen()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(8.0)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            '작성하기',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final String title;
  final String content;

  const PostItem({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(content),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => View_Post_Screen()));
          print('Tapped on $title');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
