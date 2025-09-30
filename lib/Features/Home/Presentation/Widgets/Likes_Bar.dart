import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/User_Avatar.dart';
import 'package:instagram/Features/Home/data/models/post_Model.dart';

class Likes_Bar extends StatelessWidget {
  const Likes_Bar({
    super.key,
    required this.postModel,
  });

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Row(
        children: [
          User_Avatar(
              Fpadding: 0,
              Spadding: 0,
              imageraduis: 10,
              colors: [Color(0xfff4cc00), Color(0xffff1557), Color(0xffce03c8)],
              Avatar_image: Assets.user6image),
          SizedBox(
            width: 1,
          ),
          User_Avatar(
              Fpadding: 0,
              Spadding: 0,
              imageraduis: 10,
              colors: [Color(0xfff4cc00), Color(0xffff1557), Color(0xffce03c8)],
              Avatar_image: Assets.user10image),
          SizedBox(
            width: 8,
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white, // default text color
                fontSize: 14,
              ),
              children: [
                const TextSpan(text: "Liked by "),
                TextSpan(
                  text: "mohammed88",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: postModel.NumOfLikes,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: "  others"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
