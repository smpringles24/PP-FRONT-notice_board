import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pp_front_notice_board/ui/notice_board/notice_board_view.dart';
import 'package:pp_front_notice_board/ui/notice_board/notice_board_view_model.dart';

class NoticeBoardPage extends StatelessWidget {
  const NoticeBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoticeBoardViewModel(),
      child: const NoticeBoardView(),
    );
  }
}
