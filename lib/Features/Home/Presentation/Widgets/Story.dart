import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/User_Avatar.dart';

import 'package:instagram/Features/Home/data/models/Story_Model.dart';

class Story extends StatelessWidget {
  const Story({
    super.key,
    required this.index,
    required this.storymodel,
  });
  final int index;
  final StoryModel storymodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            User_Avatar(
                Fpadding: 3,
                Spadding: 3,
                imageraduis: 38,
                colors: index == 0
                    ? [Color(0xff00da00), Color(0xff00da00)]
                    : [Color(0xffF4cc00), Color(0xffFF1557), Color(0xffce03c8)],
                Avatar_image: storymodel.image),
            Visibility(
                visible: index == 0 ? true : false,
                child: Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      Assets.AddStory,
                      width: 24,
                      height: 24,
                    )))
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          index == 0 ? 'Your Story' : storymodel.username,
          style: TextStyle(
              color: index == 0 ? Colors.grey : Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}
