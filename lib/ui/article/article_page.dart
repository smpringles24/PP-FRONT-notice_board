import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pp_front_notice_board/ui/article/article_view.dart';
import 'package:pp_front_notice_board/ui/article/article_view_model.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ArticleViewModel(),
      child: const ArticleView(),
    );
  }
}
