import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Core/utils/Styless.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/User_Avatar.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
          child: Row(
            children: [
              User_Avatar(
                Fpadding: 1.5,
                Spadding: 3,
                imageraduis: 16,
                colors: [
                  Color(0xffF4CC00),
                  Color(0xffFF1557),
                  Color(0xffCE03C8)
                ],
                Avatar_image: Assets.user10image,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'mostafa_js',
                style: Styless.headlineRegular
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Image.asset(
                Assets.options_icon,
                color: Colors.white,
                height: 24,
                width: 24,
              )
            ],
          ),
        )
      ],
    );
  }
}
