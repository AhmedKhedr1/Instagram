import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/PostBars.dart';
import 'package:instagram/Features/Home/data/models/post_Model.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.postModel});
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
          child: PostTopBar(
            postModel: postModel,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 385,
          child: Image.asset(
            postModel.image,
            fit: BoxFit.cover,
          ),
        ),
        PostBottomBar(
          postModel: postModel,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  children: [
                    TextSpan(
                      text: postModel.user_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '  ',
                    ),
                    TextSpan(
                      text: postModel.description,
                    ),
                    // TextSpan(
                    //   text: " more",
                    //   style: TextStyle(color: Colors.grey),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
