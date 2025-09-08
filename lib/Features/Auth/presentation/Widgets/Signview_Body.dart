import 'package:flutter/material.dart';
import 'package:instagram/Constant.dart';
import 'package:instagram/Core/Widgets/metalogo.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Custom_Button.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Custom_TextField.dart';
import 'package:instagram/Features/Home/Presentation/Views/HomeView.dart';

class SiginviewBody extends StatelessWidget {
  const SiginviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 20,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 94),
            child: SizedBox(
              height: 68,
              child: Image.asset(Assets.instagramlogo),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Custom_TextField(
              hinttext: 'Username,email address or mobile number ',
              keyboardType: TextInputType.emailAddress),
          SizedBox(
            height: 12,
          ),
          Custom_TextField(
              hinttext: 'Password',
              keyboardType: TextInputType.visiblePassword),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: CustomButton(
                text: 'Log in',
                textcolor: Colors.white,
                buttoncolor: Color(0xff0064e0),
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Homeview();
                    },
                  ));
                }),
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              'Forgotten password ?',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: CustomButton(
                text: 'Create new account',
                textcolor: Color(0xff6391d1),
                buttoncolor: KPrimaryColor,
                SideColor: Color(0xff6391d1),
                onpressed: () {}),
          ),
          SizedBox(
            height: 12,
          ),
          MetaLogo(),
        ],
      ),
    );
  }
}
