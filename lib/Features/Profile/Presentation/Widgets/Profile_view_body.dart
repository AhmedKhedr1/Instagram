import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileHeader.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileOverview.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileTabBar.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/description_section.dart';

class ProfileViewBody extends StatelessWidget {
  ProfileViewBody({super.key});
  final List<String> posts = [
    Assets.userpost1,
    Assets.userpost6,
    Assets.userpost2,
    Assets.userpost3,
    Assets.userpost5,
    Assets.userpost4,
    Assets.userpost7
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ProfileHeader(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 32),
          ),
          SliverToBoxAdapter(
            child: ProfileOverview(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          SliverToBoxAdapter(
            child: description_section(),
          ),
          SliverToBoxAdapter(
            child: ProfileTabBar(),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Image.asset(
                  posts[index],
                  fit: BoxFit.cover,
                );
              }, childCount: posts.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.5,
                  mainAxisSpacing: 1.5))
        ],
      ),
    );
  }
}
