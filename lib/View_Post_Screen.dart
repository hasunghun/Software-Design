import 'package:flutter/material.dart';
import 'Main_Screen.dart';
import 'Creat_A_Post_Screen.dart';

class View_Post_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('게시물 보기'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('다들 안녕하세요.'),
                          onTap: () {
                            // Handle tapping on a post item here
                            print('Tapped on 안녕');
                          },
                        ),
                        Divider(
                          // 선 추가
                          color: Colors.black,
                          thickness: 1.0,
                          indent: 16.0,
                          endIndent: 16.0,
                        ),
                        ListTile(
                          title: Text('다들 방가워요.'),
                          onTap: () {
                            // Handle tapping on a post item here
                            print('Tapped on 안녕하세요');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Text(
                '댓글',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              // 선 추가
              color: Colors.black,
              thickness: 1.0,
              indent: 16.0,
              endIndent: 16.0,
            ),
            CommentItem(
              username: 'User1',
              comment: '어서와, 만나서 반가워!',
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    // 버튼 영역 확장
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Main_Screen()),
                        );
                      },
                      child: Text('돌아가기'),
                    ),
                  ),
                  SizedBox(width: 60.0),
                  Expanded(
                    // 버튼 영역 확장
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Creat_A_Post_Screen()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(8.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
          // Handle tapping on a post item here
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

class CommentItem extends StatelessWidget {
  final String username;
  final String comment;

  const CommentItem({required this.username, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            child: Text(username[0]),
          ),
          SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(comment),
            ],
          ),
        ],
      ),
    );
  }
}
