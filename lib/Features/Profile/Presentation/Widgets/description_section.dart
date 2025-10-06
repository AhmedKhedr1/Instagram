// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/HighlightsSection%20.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/Links.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileActionButtons.dart';

class description_section extends StatelessWidget {
  description_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ahmed Khedr',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Flutter developer',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text:
                        'Mobile application developer. Passionate about building high-performance apps with great UI/UX. ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
                TextSpan(
                    text: '#FlutterDev',
                    style: TextStyle(color: Colors.blue, fontSize: 14)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Links(),
          SizedBox(
            height: 12,
          ),
          ProfileActionButtons(),
          SizedBox(
            height: 16,
          ),
         HighlightsSection(),
         SizedBox(height: 12,)
        ],
      ),
    );
  }
}
