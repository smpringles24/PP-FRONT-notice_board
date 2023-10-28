import 'package:flutter/material.dart';
import 'package:pp_front_notice_board/data/notice_board_model.dart';
import 'package:pp_front_notice_board/data/notice_board_service.dart';

class NoticeBoardViewModel extends ChangeNotifier {
  NoticeBoardViewModel() {
    fetchNoticeBoard();
  }
  
  List<NoticeBoardModel> _noticeBoards = [];

  List<NoticeBoardModel> get noticeBoards => _noticeBoards;

  void fetchNoticeBoard() async {
    try {
      _noticeBoards = await NoticeBoardService().fetchNoticeBoard();
      notifyListeners();
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
