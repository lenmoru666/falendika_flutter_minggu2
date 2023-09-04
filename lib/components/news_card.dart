import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://gamebrott.com/wp-content/uploads/2023/08/game-trending-saat-ini-4-september-750x375.jpg',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${DateFormat('dd MM yyyy').format(DateTime.now())}"),
          )
        ],
      ),
    );
  }
}
