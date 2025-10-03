import 'package:flutter/material.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileHeader.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileOverview.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        ProfileHeader(),
        SizedBox(
          height: 32,
        ),
        ProfileOverview(),
      ],
    ));
  }
}
