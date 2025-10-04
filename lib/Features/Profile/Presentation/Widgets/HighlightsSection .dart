import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';

class HighlightsSection extends StatelessWidget {
  const HighlightsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final highlights = [
      {"title": "Highlight 1", "image": Assets.Highlight1},
      // {"title": "Highlight 2", "image": Assets.Highlight2},
      {"title": "New", "image": null},
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: highlights.length,
        itemBuilder: (context, index) {
          final item = highlights[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white54, width: 2),
                  ),
                  child: item["image"] != null
                      ? ClipOval(
                          child: Image.network(
                            item["image"]!,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(Icons.add, color: Colors.white, size: 30),
                ),
                const SizedBox(height: 6),
                Text(
                  item["title"]!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
