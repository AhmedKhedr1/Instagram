import 'package:flutter/material.dart';
import 'package:instagram/Features/Splash/Presentation/Views/SplashView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashview(),
    );
  }
}
 // slivers: [
        //   SliverToBoxAdapter(
        //     child: Custom_AppBar(),
        //   ),
        //   SliverToBoxAdapter(
        //     child: Stories_ListView(),
        //   ),
        //   SliverToBoxAdapter(
        //     child: Divider(
        //       color: Color(0xff25292E),
        //     ),
        //   ),
        //   SliverList(
        //       delegate: SliverChildBuilderDelegate(
        //     childCount: posts.length,
        //     (context, index) {
        //       return Post(
        //         postModel: posts[index],
        //       );
        //     },
        //   ))
        // ],