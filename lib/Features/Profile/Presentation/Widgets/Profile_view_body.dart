import 'package:flutter/material.dart';

import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileHeader.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileOverview.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/description_section.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

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
         
        ],
      ),
    );
  }
}
