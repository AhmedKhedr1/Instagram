import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Auth/presentation/Widgets/Custom_TextField.dart';

class SignviewBody extends StatelessWidget {
  const SignviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.all(0),
                iconSize: 20,
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
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
            ),
            SizedBox(
              height: 12,
            ),
            Custom_TextField(
              hinttext: 'Password',
            ),
            Spacer(),
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
