
import 'package:flutter/material.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/ProfileStat.dart';
import 'package:instagram/Features/Profile/Presentation/Widgets/Profile_Avtar.dart';

class ProfileOverview extends StatelessWidget {
  const ProfileOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Profile_Avtar(),
        SizedBox(
          width: 28,
        ),
        ProfileStat(
          Label: 'Posts',
          value: '20',
        ),
        SizedBox(
          width: 34,
        ),
        ProfileStat(
          Label: 'followers',
          value: '112K',
        ),
        SizedBox(
          width: 34,
        ),
        ProfileStat(
          Label: 'following',
          value: '162',
        )
      ],
    );
  }
}
