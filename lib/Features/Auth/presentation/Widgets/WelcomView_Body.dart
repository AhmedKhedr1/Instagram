import 'package:flutter/material.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/LanguageSelector%20.dart';

class WelcomviewBody extends StatelessWidget {
  const WelcomviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Languageselector(),
        ],
      ),
    );
  }
}
