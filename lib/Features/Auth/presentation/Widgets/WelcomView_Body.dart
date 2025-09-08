import 'package:flutter/material.dart';
import 'package:instagram/Constant.dart';
import 'package:instagram/Core/Widgets/metalogo.dart';
import 'package:instagram/Features/Auth/presentation/Views/SigninView.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Custom_Button.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/LanguageSelector%20.dart';

class WelcomviewBody extends StatelessWidget {
  const WelcomviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Languageselector(),
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
            Spacer(),
            CustomButton(
                text: 'Get started',
                textcolor: Colors.white,
                buttoncolor: Color(0xff0064E0),
                onpressed: () {}),
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
                  }),
            ),
            MetaLogo()
          ],
        ),
      ),
    );
  }
}
