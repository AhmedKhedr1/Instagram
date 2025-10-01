import 'package:flutter/material.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Home_View_Body.dart';

class profileview extends StatelessWidget {
  const profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C0F14),
      body: HomeViewBody(),
    );
  }
}