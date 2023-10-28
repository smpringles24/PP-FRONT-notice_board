import 'package:pp_front_notice_board/data/notice_board_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NoticeBoardService {
  Future<List<NoticeBoardModel>> fetchNoticeBoard() async {
    final uri = Uri.parse('http://localhost:7890/post');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      print(response.body);

      final List<dynamic> responseBody = json.decode(response.body);
      return responseBody
          .map((json) => NoticeBoardModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load notice board');
    }
  }
}
