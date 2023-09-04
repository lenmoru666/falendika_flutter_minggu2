import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:falendika_flutter_2/components/news_card.dart';

class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://api.duniagames.co.id/api/content/upload/file/16747566311609150297.JPG',
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
          ),
          const SizedBox(height: 8),
          Text(
            'Trailer Wuthering Waves',
            style: GoogleFonts.plusJakartaSans(fontSize: 21),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.purple),
            child: const Text("Rilis 2024"),
          ),
          const SizedBox(height: 8),
          Column(
            children: List.generate(
                4,
                (index) => const NewsCard(
                      title: "10 Game Trending Saat Ini yang Populer di Steam",
                    )),
          ),
        ],
      ),
    );
  }
}
