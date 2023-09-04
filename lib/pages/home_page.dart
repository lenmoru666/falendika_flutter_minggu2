import 'package:flutter/material.dart';
import 'package:falendika_flutter_2/layouts/home/home_main_layout.dart';
import 'package:falendika_flutter_2/layouts/home/home_today_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("My App"),
        backgroundColor: Colors.red,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints.expand(
                  height: 50), // Adjust the height as needed
              child: TabBar(
                tabs: [
                  Tab(
                    child: Text("Berita Tebaru"),
                  ),
                  Tab(
                    child: Text("Pertandingan Hari ini"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  HomeMainLayout(),
                  HomeTodayLayout(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
