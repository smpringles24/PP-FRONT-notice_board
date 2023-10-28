import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pp_front_notice_board/ui/writing/writing_view.dart';
import 'package:pp_front_notice_board/ui/writing/writing_view_model.dart';

class WritingPage extends StatelessWidget {
  const WritingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WritingViewModel(),
      child: const WritingView(),
    );
  }
}
