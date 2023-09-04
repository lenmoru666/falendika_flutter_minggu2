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
        title: const Text(
          "MyApp",
          style: TextStyle(
            color: Colors.white, // Set the text color to white
          ),
        ),
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
                    child: Text("BERITA TERBARU"),
                  ),
                  Tab(
                    child: Text("PERTANDINGAN HARI INI"),
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
