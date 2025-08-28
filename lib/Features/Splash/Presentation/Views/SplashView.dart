import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Views/HomeView.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Homeview();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff162127),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 420,
          ),
          Center(
              child: Image.asset(
            Assets.instagramlogo,
          )),
          Spacer(),
          Image.asset(Assets.metalogo),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
