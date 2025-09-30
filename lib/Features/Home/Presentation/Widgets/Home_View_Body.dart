import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Custom_AppBar.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Post.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Stories_ListView.dart';

import 'package:instagram/Features/Home/data/models/post_Model.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = [
      PostModel(
        image: Assets.postiamge1,
        user_name: "khaled.pro",
        user_image: Assets.user8image,
        description: "Mesmerizing colors of nature  🐦🐦",
        NumOfLikes: '540',
        NumOfComments: '42',
        NumOfSend: '10',
      ),
      PostModel(
        image: Assets.postiamge2,
        user_name: "omar_pro",
        user_image: Assets.user3image,
        description: "Epic adventure on the snowy mountains 🏔️❄️",
        NumOfLikes: '320',
        NumOfComments: '18',
        NumOfSend: '5',
      ),
      PostModel(
        image: Assets.postiamge3,
        user_name: "kareem.codes",
        user_image: Assets.user4image,
        description: "City lights and futuristic vibes 🌆🚀",
        NumOfLikes: '410',
        NumOfComments: '27',
        NumOfSend: '7',
      ),
      PostModel(
        image: Assets.postiamge4,
        user_name: "mona_art",
        user_image: Assets.user1image,
        description: "Cute chameleon vibes 🦎💛",
        NumOfLikes: '230',
        NumOfComments: '15',
        NumOfSend: '3',
      ),
      PostModel(
        image: Assets.user5image,
        user_name: "ali",
        user_image: Assets.user5image,
        description: "Just chilling today 😎",
        NumOfLikes: '120',
        NumOfComments: '7',
        NumOfSend: '2',
      ),
      PostModel(
        image: Assets.user6image,
        user_name: "hassan_xx",
        user_image: Assets.user6image,
        description: "Workout vibes 💪",
        NumOfLikes: '275',
        NumOfComments: '14',
        NumOfSend: '6',
      ),
      PostModel(
        image: Assets.user7image,
        user_name: "youssef07",
        user_image: Assets.user7image,
        description: "Hiking adventures ⛰️",
        NumOfLikes: '360',
        NumOfComments: '20',
        NumOfSend: '8',
      ),
      PostModel(
        image: Assets.user8image,
        user_name: "khaled.pro",
        user_image: Assets.user8image,
        description: "Coding like a pro 🔥",
        NumOfLikes: '610',
        NumOfComments: '25',
        NumOfSend: '12',
      ),
      PostModel(
        image: Assets.user9image,
        user_name: "mohamed88",
        user_image: Assets.user9image,
        description: "Coffee makes everything better ☕",
        NumOfLikes: '150',
        NumOfComments: '9',
        NumOfSend: '1',
      ),
      PostModel(
        image: Assets.user10image,
        user_name: "mostafa_js",
        user_image: Assets.user10image,
        description: "JS all day, every day 😍",
        NumOfLikes: '475',
        NumOfComments: '22',
        NumOfSend: '4',
      ),
      PostModel(
        image: Assets.user11image,
        user_name: "tarek_dev",
        user_image: Assets.user11image,
        description: "New project coming soon 🚀",
        NumOfLikes: '525',
        NumOfComments: '28',
        NumOfSend: '11',
      ),
    ];

    return SafeArea(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Custom_AppBar(messagesCount: 5, HasNotification: true),
          ),
          SliverToBoxAdapter(
            child: Stories_ListView(),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Color(0xff25292e),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: posts.length,
            (context, index) {
              return Post(postModel: posts[index]);
            },
          ))
        ],
      ),
    );
  }
}
