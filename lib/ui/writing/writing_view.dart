import 'package:flutter/material.dart';

class WritingView extends StatelessWidget {
  const WritingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('글 작성'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('제목', style: TextStyle(fontSize: 30)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const Text('내용', style: TextStyle(fontSize: 30)),
            const Expanded(
              flex: 10,
              child: TextField(
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('목록으로'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('작성하기'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
