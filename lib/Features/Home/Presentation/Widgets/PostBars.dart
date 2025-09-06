import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Core/utils/Styless.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/User_Avatar.dart';
import 'package:instagram/Features/Home/data/models/post_Model.dart';

class PostTopBar extends StatelessWidget {
  const PostTopBar({
    super.key,
    required this.postModel,
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
          colors: [Color(0xffF4CC00), Color(0xffFF1557), Color(0xffCE03C8)],
          Avatar_image: postModel.user_image,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          postModel.user_name,
          style: Styless.headlineRegular.copyWith(fontWeight: FontWeight.w500),
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

class PostBottomBar extends StatefulWidget {
  const PostBottomBar({
    super.key,
    required this.postModel,
  });
  final PostModel postModel;

  @override
  State<PostBottomBar> createState() => _PostBottomBarState();
}

class _PostBottomBarState extends State<PostBottomBar> {
  bool IsLiked = false;
  late int likesCount;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    likesCount = int.tryParse(widget.postModel.NumOfLikes) ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                if (IsLiked) {
                  likesCount--;
                } else {
                  likesCount++;
                }
                IsLiked = !IsLiked;
              });
            },
            icon: Icon(
              IsLiked ? Icons.favorite : Icons.favorite_border_outlined,
              color: IsLiked ? Colors.red : Colors.white,
              size: 24,
            )),
        Text(
          likesCount.toString(),
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
          widget.postModel.NumOfComments,
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
          widget.postModel.NumOfSend,
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
