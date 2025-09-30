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
            colors: [Color(0xfff4cc00), Color(0xffff1557), Color(0xffce03c8)],
            Avatar_image: postModel.user_image),
        SizedBox(
          width: 8,
        ),
        Text(
          postModel.user_name,
          style: Styless.headlineRegular
              .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Spacer(),
        RotatedBox(
            quarterTurns: 1,
            child: Image.asset(
              Assets.options_icon,
              color: Colors.white,
              width: 24,
              height: 24,
            ))
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
    return Row(children: [
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
            size: 28,
          )),
      Text(
        likesCount.toString(),
        style: Styless.calloutBold.copyWith(fontSize: 16),
      ),
      SizedBox(
        width: 12,
      ),
      Padding(
        padding: EdgeInsetsGeometry.only(right: 4),
        child: Image.asset(
          Assets.comment_icon,
          color: Colors.white,
          width: 28,
          height: 28,
        ),
      ),
      Text(
        widget.postModel.NumOfComments,
        style: Styless.calloutBold.copyWith(fontSize: 16),
      ),
      SizedBox(
        width: 12,
      ),
      Padding(
        padding: EdgeInsetsGeometry.only(right: 4),
        child: Image.asset(
          Assets.Direct_message,
          color: Colors.white,
        ),
      ),
      Text(
        widget.postModel.NumOfSend,
        style: Styless.calloutBold.copyWith(fontSize: 16),
      ),
      Spacer(),
      Image.asset(
        Assets.Save_icon,
        color: Colors.white,
      ),
      SizedBox(
        width: 12,
      )
    ]);
  }
}
