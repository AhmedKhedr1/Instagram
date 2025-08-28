import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Story.dart';
import 'package:instagram/Features/Home/data/models/Story_Model.dart';

class Stories_ListView extends StatelessWidget {
  const Stories_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<StoryModel> stories = [
      StoryModel(image: Assets.user2image, username: "ahmed_dev"),
      StoryModel(image: Assets.user3image, username: "omar_pro"),
      StoryModel(image: Assets.user4image, username: "kareem.codes"),
      StoryModel(image: Assets.user1image, username: "mona_art"),
      StoryModel(image: Assets.user5image, username: "ali"),
      StoryModel(image: Assets.user6image, username: "hassan_xx"),
      StoryModel(image: Assets.user7image, username: "youssef07"),
      StoryModel(image: Assets.user8image, username: "khaled.pro"),
      StoryModel(image: Assets.user9image, username: "mohamed88"),
      StoryModel(image: Assets.user10image, username: "mostafa_js"),
      StoryModel(image: Assets.user11image, username: "tarek_dev"),
    ];

    return SizedBox(
        height: 134,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Story(
                index: index,
                storymodel: stories[index],
              ),
            );
          },
        ));
  }
}
