import 'package:flutter/material.dart';
import 'package:instagram/Constant.dart';
import 'package:instagram/Core/Widgets/metalogo.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Auth/presentation/Views/SigninView.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Custom_Button.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/LanguageSelector%20.dart';

class WelcomeviewBody extends StatelessWidget {
  const WelcomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Languageselector(),
            Spacer(),
            Image.asset(Assets.welcomeimage),
            Text(
              'Join Instagram',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 32),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Share what you're into with the people who get you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 24),
            ),
            SizedBox(
              height: 70,
            ),
            CustomButton(
                text: 'Get started',
                textcolor: Colors.white,
                buttoncolor: Color(0xff0064E0),
                onpressed: () {},
                fontSize: 23),
            SizedBox(
              height: 12,
            ),
            CustomButton(
                text: 'I already have an account',
                textcolor: Colors.white,
                buttoncolor: KPrimaryColor,
                SideColor: Color(0xffB7C4CC).withOpacity(0.5),
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Signinview();
                    },
                  ));
                },
                fontSize: 23),
            MetaLogo()
          ],
        ),
      ),
    );
  }
}
