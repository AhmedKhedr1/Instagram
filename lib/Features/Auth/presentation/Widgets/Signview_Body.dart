import 'package:flutter/material.dart';
import 'package:instagram/Constant.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Custom_Button.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Custom_TextField.dart';
import 'package:instagram/Features/Home/Presentation/Views/HomeView.dart';

class SignviewBody extends StatelessWidget {
  const SignviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.all(0),
                iconSize: 20,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 94),
              child: SizedBox(
                height: 68,
                child: Image.asset(Assets.instagramlogo),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Custom_TextField(
              hinttext: 'Username,email address or mobile number',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 12,
            ),
            Custom_TextField(
              hinttext: 'Password',
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                text: 'Log in ',
                textcolor: Colors.white,
                buttoncolor: Color(0xff0064E0),
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Homeview();
                    },
                  ));
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                text: 'Create new account',
                textcolor: Color(0xff6391D1),
                buttoncolor: KPrimaryColor,
                SideColor: Color(0xff6391D1),
                onpressed: () {},
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
                width: 77,
                height: 39,
                child: Image.asset(
                  Assets.metalogo,
                  color: Color(0xffBCCAD3),
                )),
            SizedBox(
              height: 34,
            )
          ],
        ),
      ),
    );
  }
}
