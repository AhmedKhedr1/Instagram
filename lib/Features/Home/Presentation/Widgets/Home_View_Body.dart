import 'package:flutter/material.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Custom_AppBar.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Post.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/Stories_ListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Custom_AppBar(),
          ),
          SliverToBoxAdapter(
            child: Stories_ListView(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Divider(
                  color: Color(0xff25292E),
                ),
                Post()
              ],
            ),
          )
        ],
      ),
    );
  }
}
