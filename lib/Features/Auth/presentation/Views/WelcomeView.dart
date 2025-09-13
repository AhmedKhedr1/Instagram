import 'package:flutter/material.dart';
import 'package:instagram/Constant.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/WelcomeView_Body.dart';

class Welcomeview extends StatelessWidget {
  const Welcomeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: WelcomeviewBody(),
    );
  }
}
