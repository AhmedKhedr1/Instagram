import 'package:flutter/material.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Likes_Bar.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/PostBars.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Psot_description.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/comments_bar.dart';
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
        PostBottomBar(postModel: postModel),
        Likes_Bar(postModel: postModel),
        Psot_description(postModel: postModel),
        CommentText()
      ],
    );
  }
}
