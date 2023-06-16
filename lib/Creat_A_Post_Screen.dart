import 'package:flutter/material.dart';
import 'Main_Screen.dart';

class Creat_A_Post_Screen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('게시물 작성'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: '제목',
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: TextField(
                controller: contentController,
                decoration: InputDecoration(
                  labelText: '내용',
                ),
                maxLines: null,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                writecomple(context);
                String title = titleController.text;
                String content = contentController.text;
                // 게시물을 작성하는 동작 추가
                // 예: 게시물을 서버에 전송하고 성공 시 홈페이지로 돌아가기
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Main_Screen()),
                );
              },
              child: Text('작성하기'),
            ),
          ],
        ),
      ),
    );
  }
}

void writecomple(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('작성이 완료되었습니다.'),
    ),
  );
}
