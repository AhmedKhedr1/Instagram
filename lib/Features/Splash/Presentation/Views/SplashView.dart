import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram/Constant.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Auth/presentation/Views/WelcomeView.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Welcomeview();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 420,
          ),
          Center(
            child: Image.asset(Assets.instagramlogo),
          ),
          Spacer(),
          Image.asset(Assets.metalogo),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
