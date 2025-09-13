import 'package:flutter/material.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Home_View_Body.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: HomeViewBody(),
    );
  }
}
