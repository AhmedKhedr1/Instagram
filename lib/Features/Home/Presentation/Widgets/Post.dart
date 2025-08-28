import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/PostBars.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
          child: PostTopBar(),
        ),
        SizedBox(
          width: double.infinity,
          height: 385,
          child: Image.asset(
            Assets.postiamge1,
            fit: BoxFit.cover,
          ),
          
        ),
        PostBottomBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  children: [
                    TextSpan(
                      text: "mostafa_js",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          "Mesmerizing colors and graceful movements! This tropical bird truly embodies the beauty of nature’s...",
                    ),
                    TextSpan(
                      text: " more",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
