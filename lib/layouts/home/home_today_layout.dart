import 'package:flutter/material.dart';
import 'package:falendika_flutter_2/components/news_card.dart';

class HomeTodayLayout extends StatelessWidget {
  const HomeTodayLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewsCard(
          title: "My Card",
        )
      ],
    );
  }
}
