import 'package:flutter/material.dart';
import 'package:pp_front_notice_board/ui/notice_board/notice_board_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NoticeBoardPage(),
    );
  }
}
