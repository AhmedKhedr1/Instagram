import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CommentText extends StatelessWidget {
  const CommentText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              children: [
                const TextSpan(
                  text: "Ahmed_1 ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text: "True masterpiece of nature! ✨ ",
                ),
                TextSpan(
                  text: "#NatureBeauty",
                  style: const TextStyle(
                    color: Colors.blue, // لون الهاشتاق
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // هنا تحط الأكشن لما يضغط على الهاشتاق
                      print("Hashtag clicked!");
                    },
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "11 hours ago",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
