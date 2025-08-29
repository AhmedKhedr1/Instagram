
import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Core/utils/Styless.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/User_Avatar.dart';
import 'package:instagram/Features/Home/data/models/post_Model.dart';

class PostTopBar extends StatelessWidget {
  const PostTopBar({
    super.key, required this.postModel,
  });
final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return Row(
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
          Avatar_image: postModel.user_image,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          postModel.user_name,
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
    );
  }
}

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({
    super.key, required this.postModel,
  });
final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
              size: 24,
            )),
        Text(
          postModel.NumOfLikes,
          style: Styless.calloutBold,
        ),
        SizedBox(
          width: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Image.asset(
            Assets.comment_icon,
            color: Colors.white,
          ),
        ),
        Text(
          postModel.NumOfComments,
          style: Styless.calloutBold,
        ),
        SizedBox(
          width: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Image.asset(
            Assets.Direct_message,
            color: Colors.white,
          ),
        ),
        Text(
          postModel.NumOfSend,
          style: Styless.calloutBold,
        ),
        Spacer(),
        Image.asset(
          Assets.Save_icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 12,
        )
      ],
    );
  }
}
