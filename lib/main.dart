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
/* return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Languageselector(),
            Spacer(),
            Image.asset(Assets.welcomeimage),
            Text(
              "Join Instagram",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Share what you're into with the people who get you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            CustomButton(
              text: 'Get started',
              textcolor: Colors.white,
              buttoncolor: Color(0xff0064E0),
              onpressed: () {},
              fontSize: 23,
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              child: CustomButton(
                text: 'I already have an account',
                textcolor: Colors.white,
                buttoncolor: KPrimaryColor,
                SideColor: Color(0xffB7C4CC).withOpacity(0.5),
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signinview(),
                      ));
                },
                fontSize: 23,
              ),
            ),
            MetaLogo()
          ],
        ),
      ),
    ); */
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