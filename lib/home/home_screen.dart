import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SM Notice Board'),
        backgroundColor: Colors.pink,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _ListviewTile(),
                          Divider(),
                          _ListviewTile(),
                          _ListviewTile(),
                          _ListviewTile(),
                          _ListviewTile(),
                          _ListviewTile(),
                        ]),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
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
  const _ListviewTile();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(children: [
        Expanded(
          flex: 10,
          child: Text('NO.'),
        ),
        Expanded(
          flex: 50,
          child: Text('제목'),
        ),
        Expanded(
          flex: 10,
          child: Text('글쓴이'),
        ),
        Expanded(
          flex: 20,
          child: Text('작성시간'),
        ),
        Expanded(
          flex: 10,
          child: Text('조회수'),
        ),
      ]),
    );
  }
}
