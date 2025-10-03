import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/User_Avatar.dart';

class Profile_Avtar extends StatelessWidget {
  const Profile_Avtar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          User_Avatar(
              Fpadding: 3,
              Spadding: 3,
              imageraduis: 46,
              colors: [
                Color(0xffF4cc00),
                Color(0xffFF1557),
                Color(0xffce03c8),
              ],
              Avatar_image: Assets.user2image),
          Positioned(
              bottom: 6,
              right: 2,
              child: Image.asset(
                Assets.AddStory,
                width: 24,
                height: 24,
              ))
        ],
      ),
    );
  }
}
