import 'package:flutter/material.dart';
import 'package:pp_front_notice_board/data/notice_board_model.dart';
import 'package:pp_front_notice_board/ui/notice_board/notice_board_view_model.dart';
import 'package:provider/provider.dart';

class NoticeBoardView extends StatelessWidget {
  const NoticeBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    NoticeBoardViewModel noticeBoardViewModel =
        Provider.of<NoticeBoardViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SM Notice Board'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(3),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.note_alt),
                              Text('글쓰기'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _ListviewTile(null),
                        const Divider(),
                        Expanded(
                          child: ListView.separated(
                            itemCount: noticeBoardViewModel.noticeBoards.length,
                            itemBuilder: (BuildContext context, int index) {
                              return _ListviewTile(
                                  noticeBoardViewModel.noticeBoards[index]);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(height: 10);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    child: Text('1 2 3 4 5 6 7 8 9 10'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(
          label: 'home',
          icon: Icon(Icons.home),
        ),
        NavigationDestination(
          label: 'settings',
          icon: Icon(Icons.settings),
        )
      ]),
    );
  }
}

class _ListviewTile extends StatelessWidget {
  NoticeBoardModel? noticeBoardModel;

  _ListviewTile(this.noticeBoardModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(children: [
        Expanded(
          flex: 10,
          child: Text(noticeBoardModel?.id?.toString() ?? 'NO.'),
        ),
        Expanded(
          flex: 50,
          child: Text(noticeBoardModel?.title?.toString() ?? '제목'),
        ),
        Expanded(
          flex: 20,
          child: Text(noticeBoardModel?.createdAt?.toString() ?? '작성시간'),
        ),
      ]),
    );
  }
}
